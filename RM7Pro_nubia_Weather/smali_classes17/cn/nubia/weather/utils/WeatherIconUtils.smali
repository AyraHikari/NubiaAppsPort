.class public Lcn/nubia/weather/utils/WeatherIconUtils;
.super Ljava/lang/Object;
.source "WeatherIconUtils.java"


# static fields
.field private static final ALARM_COOLING_ARRAY:[I

.field private static final ALARM_DROUGHT_ARRAY:[I

.field private static final ALARM_DUSTTHAZE_ARRAY:[I

.field private static final ALARM_FROZEN_ARRAY:[I

.field private static final ALARM_GALE_ARRAY:[I

.field private static final ALARM_HEAVY_POLLUTION_ARRAY:[I

.field private static final ALARM_HEAVY_SNOW_ARRAY:[I

.field private static final ALARM_HIGH_TEMP_ARRAY:[I

.field private static final ALARM_LIGHTING_ARRAY:[I

.field private static final ALARM_PRAIRIE_FIRE_RISK_ARRAY:[I

.field private static final ALARM_RAINSTORM_ARRAY:[I

.field private static final ALARM_ROAD_ICING_ARRAY:[I

.field private static final ALARM_THUNDERSTROM_ARRAY:[I

.field private static final ALARM_TORNADO_ARRAY:[I

.field private static final ALARM_TYPHOON_ARRAY:[I

.field private static final ALARM_WATERLOGGING_RISK_ARRAY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_RAINSTORM_ARRAY:[I

    .line 24
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_FROZEN_ARRAY:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_PRAIRIE_FIRE_RISK_ARRAY:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_GALE_ARRAY:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HEAVY_SNOW_ARRAY:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_ROAD_ICING_ARRAY:[I

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_DROUGHT_ARRAY:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HIGH_TEMP_ARRAY:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_DUSTTHAZE_ARRAY:[I

    .line 112
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_COOLING_ARRAY:[I

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_LIGHTING_ARRAY:[I

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_THUNDERSTROM_ARRAY:[I

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_TORNADO_ARRAY:[I

    .line 156
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_TYPHOON_ARRAY:[I

    .line 167
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HEAVY_POLLUTION_ARRAY:[I

    .line 178
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_WATERLOGGING_RISK_ARRAY:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f02009c
        0x7f020099
        0x7f02009d
        0x7f02009a
        0x7f02009b
        0x7f020098
    .end array-data

    .line 24
    :array_1
    .array-data 4
        0x7f020072
        0x7f02006f
        0x7f020073
        0x7f020070
        0x7f020071
        0x7f02006e
    .end array-data

    .line 35
    :array_2
    .array-data 4
        0x7f020096
        0x7f020093
        0x7f020097
        0x7f020094
        0x7f020095
        0x7f020092
    .end array-data

    .line 46
    :array_3
    .array-data 4
        0x7f020078
        0x7f020075
        0x7f020079
        0x7f020076
        0x7f020077
        0x7f020074
    .end array-data

    .line 57
    :array_4
    .array-data 4
        0x7f020084
        0x7f020081
        0x7f020085
        0x7f020082
        0x7f020083
        0x7f020080
    .end array-data

    .line 68
    :array_5
    .array-data 4
        0x7f0200a2
        0x7f02009f
        0x7f0200a3
        0x7f0200a0
        0x7f0200a1
        0x7f02009e
    .end array-data

    .line 79
    :array_6
    .array-data 4
        0x7f020066
        0x7f020063
        0x7f020067
        0x7f020064
        0x7f020065
        0x7f020062
    .end array-data

    .line 90
    :array_7
    .array-data 4
        0x7f02008a
        0x7f020087
        0x7f02008b
        0x7f020088
        0x7f020089
        0x7f020086
    .end array-data

    .line 101
    :array_8
    .array-data 4
        0x7f02006c
        0x7f020069
        0x7f02006d
        0x7f02006a
        0x7f02006b
        0x7f020068
    .end array-data

    .line 112
    :array_9
    .array-data 4
        0x7f020060
        0x7f02005d
        0x7f020061
        0x7f02005e
        0x7f02005f
        0x7f02005c
    .end array-data

    .line 123
    :array_a
    .array-data 4
        0x7f020090
        0x7f02008d
        0x7f020091
        0x7f02008e
        0x7f02008f
        0x7f02008c
    .end array-data

    .line 134
    :array_b
    .array-data 4
        0x7f0200a8
        0x7f0200a5
        0x7f0200a9
        0x7f0200a6
        0x7f0200a7
        0x7f0200a4
    .end array-data

    .line 145
    :array_c
    .array-data 4
        0x7f0200ae
        0x7f0200ab
        0x7f0200af
        0x7f0200ac
        0x7f0200ad
        0x7f0200aa
    .end array-data

    .line 156
    :array_d
    .array-data 4
        0x7f0200b4
        0x7f0200b1
        0x7f0200b5
        0x7f0200b2
        0x7f0200b3
        0x7f0200b0
    .end array-data

    .line 167
    :array_e
    .array-data 4
        0x7f02007e
        0x7f02007b
        0x7f02007f
        0x7f02007c
        0x7f02007d
        0x7f02007a
    .end array-data

    .line 178
    :array_f
    .array-data 4
        0x7f0200ba
        0x7f0200b7
        0x7f0200bb
        0x7f0200b8
        0x7f0200b9
        0x7f0200b6
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static getAlarmLevelIcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "alarmType"    # Ljava/lang/String;
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 550
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "levelypes":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 552
    .local v0, "currentAlarmLevelIconId":I
    const/4 v1, 0x0

    .line 553
    .local v1, "currentLevel":I
    if-eqz v3, :cond_1

    array-length v5, v3

    if-lez v5, :cond_1

    .line 554
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    .line 555
    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    move v1, v2

    .line 554
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "i":I
    :cond_1
    if-nez p0, :cond_2

    .line 635
    :goto_1
    return v4

    .line 563
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    move v4, v5

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 633
    const/4 v0, 0x0

    :goto_3
    move v4, v0

    .line 635
    goto :goto_1

    .line 563
    :sswitch_0
    const-string v6, "\u6c99\u5c18\u66b4"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :sswitch_1
    const-string v4, "\u9f99\u5377\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "\u96f7\u7535"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v4, "\u6d77\u4e0a\u5927\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v4, "\u5927\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "\u53f0\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_6
    const-string v4, "\u96f7\u7535\u5927\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_7
    const-string v4, "\u66b4\u96ea"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_8
    const-string v4, "\u96ea\u5d29"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_9
    const-string v4, "\u971c\u51bb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_a
    const-string v4, "\u5927\u96ea"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_b
    const-string v4, "\u66b4\u96e8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_c
    const-string v4, "\u4f4e\u6e29\u96e8\u96ea\u51b0\u51bb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string v4, "\u51b0\u96f9"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "\u51b0\u51bb"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "\u4f4e\u6e29"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "\u5bd2\u51b7"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "\u5bd2\u6f6e"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "\u4f4e\u6e29\u51bb\u5bb3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "\u964d\u6e29"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string v4, "\u9ad8\u6e29\u4e2d\u6691"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string v4, "\u5e72\u70ed\u98ce"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string v4, "\u70ed\u6d6a"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string v4, "\u9ad8\u6e29"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x17

    goto/16 :goto_2

    :sswitch_18
    const-string v4, "\u973e"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x18

    goto/16 :goto_2

    :sswitch_19
    const-string v4, "\u5927\u96fe"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x19

    goto/16 :goto_2

    :sswitch_1a
    const-string v4, "\u7070\u973e"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1a

    goto/16 :goto_2

    :sswitch_1b
    const-string v4, "\u5e72\u65f1"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1b

    goto/16 :goto_2

    :sswitch_1c
    const-string v4, "\u91cd\u6c61\u67d3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1c

    goto/16 :goto_2

    :sswitch_1d
    const-string v4, "\u7a7a\u6c14\u91cd\u6c61\u67d3"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1d

    goto/16 :goto_2

    :sswitch_1e
    const-string v4, "\u8349\u539f\u706b\u9669"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1e

    goto/16 :goto_2

    :sswitch_1f
    const-string v4, "\u68ee\u6797\u706b\u9669"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1f

    goto/16 :goto_2

    :sswitch_20
    const-string v4, "\u6e0d\u6d9d\u98ce\u9669"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto/16 :goto_2

    :sswitch_21
    const-string v4, "\u5730\u8d28\u707e\u5bb3\u6c14\u8c61\u98ce\u9669"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x21

    goto/16 :goto_2

    :sswitch_22
    const-string v4, "\u9053\u8def\u7ed3\u51b0"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x22

    goto/16 :goto_2

    :sswitch_23
    const-string v4, "\u9053\u8def\u51b0\u96ea"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x23

    goto/16 :goto_2

    .line 566
    :pswitch_0
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_TORNADO_ARRAY:[I

    aget v0, v4, v1

    .line 567
    goto/16 :goto_3

    .line 569
    :pswitch_1
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_THUNDERSTROM_ARRAY:[I

    aget v0, v4, v1

    .line 570
    goto/16 :goto_3

    .line 573
    :pswitch_2
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_GALE_ARRAY:[I

    aget v0, v4, v1

    .line 574
    goto/16 :goto_3

    .line 576
    :pswitch_3
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_TYPHOON_ARRAY:[I

    aget v0, v4, v1

    .line 577
    goto/16 :goto_3

    .line 579
    :pswitch_4
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_THUNDERSTROM_ARRAY:[I

    aget v0, v4, v1

    .line 580
    goto/16 :goto_3

    .line 585
    :pswitch_5
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HEAVY_SNOW_ARRAY:[I

    aget v0, v4, v1

    .line 586
    goto/16 :goto_3

    .line 588
    :pswitch_6
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_RAINSTORM_ARRAY:[I

    aget v0, v4, v1

    .line 589
    goto/16 :goto_3

    .line 593
    :pswitch_7
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_FROZEN_ARRAY:[I

    aget v0, v4, v1

    .line 594
    goto/16 :goto_3

    .line 600
    :pswitch_8
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_COOLING_ARRAY:[I

    aget v0, v4, v1

    .line 601
    goto/16 :goto_3

    .line 606
    :pswitch_9
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HIGH_TEMP_ARRAY:[I

    aget v0, v4, v1

    .line 607
    goto/16 :goto_3

    .line 611
    :pswitch_a
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_DUSTTHAZE_ARRAY:[I

    aget v0, v4, v1

    .line 612
    goto/16 :goto_3

    .line 614
    :pswitch_b
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_DROUGHT_ARRAY:[I

    aget v0, v4, v1

    .line 615
    goto/16 :goto_3

    .line 618
    :pswitch_c
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_HEAVY_POLLUTION_ARRAY:[I

    aget v0, v4, v1

    .line 619
    goto/16 :goto_3

    .line 622
    :pswitch_d
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_PRAIRIE_FIRE_RISK_ARRAY:[I

    aget v0, v4, v1

    .line 623
    goto/16 :goto_3

    .line 626
    :pswitch_e
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_WATERLOGGING_RISK_ARRAY:[I

    aget v0, v4, v1

    .line 627
    goto/16 :goto_3

    .line 630
    :pswitch_f
    sget-object v4, Lcn/nubia/weather/utils/WeatherIconUtils;->ALARM_ROAD_ICING_ARRAY:[I

    aget v0, v4, v1

    .line 631
    goto/16 :goto_3

    .line 563
    :sswitch_data_0
    .sparse-switch
        -0x54d7e258 -> :sswitch_c
        -0xec34cfb -> :sswitch_1d
        0x973e -> :sswitch_18
        0xa089b -> :sswitch_f
        0xa360b -> :sswitch_e
        0xa7b49 -> :sswitch_d
        0xac2de -> :sswitch_5
        0xb62a3 -> :sswitch_a
        0xb62b7 -> :sswitch_19
        0xb6487 -> :sswitch_4
        0xb7025 -> :sswitch_10
        0xb8ddc -> :sswitch_11
        0xbd5bf -> :sswitch_1b
        0xd06b4 -> :sswitch_b
        0xd06b6 -> :sswitch_7
        0xe1a1d -> :sswitch_16
        0xe34ce -> :sswitch_1a
        0x129e1f -> :sswitch_9
        0x12a17c -> :sswitch_13
        0x12a37f -> :sswitch_8
        0x12bd1e -> :sswitch_2
        0x132e51 -> :sswitch_17
        0x170cf73 -> :sswitch_15
        0x1a337f5 -> :sswitch_0
        0x230da1f -> :sswitch_1c
        0x261d190 -> :sswitch_1
        0x25b48f33 -> :sswitch_12
        0x3145d987 -> :sswitch_1f
        0x32f2e33a -> :sswitch_3
        0x33b54c8b -> :sswitch_20
        0x3cf5e754 -> :sswitch_1e
        0x43ba7436 -> :sswitch_23
        0x43bfa639 -> :sswitch_22
        0x46635225 -> :sswitch_6
        0x480abc15 -> :sswitch_14
        0x4854f555 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static getWeatherIcon(IZ)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "isNight"    # Z

    .prologue
    const v3, 0x7f0200d0

    const v4, 0x7f0200cf

    const v2, 0x7f0200ce

    const v0, 0x7f0200cb

    const v1, 0x7f0200df

    .line 198
    if-eqz p1, :cond_0

    .line 199
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 356
    :goto_0
    :pswitch_1
    return v0

    .line 201
    :pswitch_2
    const v0, 0x7f020111

    goto :goto_0

    .line 203
    :pswitch_3
    const v0, 0x7f020101

    goto :goto_0

    .line 205
    :pswitch_4
    const v0, 0x7f0200d6

    goto :goto_0

    .line 207
    :pswitch_5
    const v0, 0x7f02010c

    goto :goto_0

    .line 209
    :pswitch_6
    const v0, 0x7f020112

    goto :goto_0

    .line 211
    :pswitch_7
    const v0, 0x7f020113

    goto :goto_0

    .line 213
    :pswitch_8
    const v0, 0x7f02010d

    goto :goto_0

    .line 215
    :pswitch_9
    const v0, 0x7f020107

    goto :goto_0

    .line 217
    :pswitch_a
    const v0, 0x7f020108

    goto :goto_0

    .line 219
    :pswitch_b
    const v0, 0x7f02010a

    goto :goto_0

    .line 221
    :pswitch_c
    const v0, 0x7f020104

    goto :goto_0

    .line 223
    :pswitch_d
    const v0, 0x7f020110

    goto :goto_0

    .line 225
    :pswitch_e
    const v0, 0x7f020106

    goto :goto_0

    .line 227
    :pswitch_f
    const v0, 0x7f020114

    goto :goto_0

    .line 230
    :pswitch_10
    const v0, 0x7f02010e

    goto :goto_0

    .line 232
    :pswitch_11
    const v0, 0x7f020109

    goto :goto_0

    .line 234
    :pswitch_12
    const v0, 0x7f02010b

    goto :goto_0

    .line 236
    :pswitch_13
    const v0, 0x7f020105

    goto :goto_0

    .line 238
    :pswitch_14
    const v0, 0x7f02010f

    goto :goto_0

    .line 244
    :pswitch_15
    const v0, 0x7f020102

    goto :goto_0

    .line 246
    :pswitch_16
    const v0, 0x7f020105

    goto :goto_0

    .line 248
    :pswitch_17
    const v0, 0x7f02010a

    goto :goto_0

    .line 250
    :pswitch_18
    const v0, 0x7f020104

    goto :goto_0

    .line 252
    :pswitch_19
    const v0, 0x7f020110

    goto :goto_0

    .line 254
    :pswitch_1a
    const v0, 0x7f020106

    goto :goto_0

    .line 256
    :pswitch_1b
    const v0, 0x7f020114

    goto :goto_0

    .line 258
    :pswitch_1c
    const v0, 0x7f02010b

    goto :goto_0

    .line 260
    :pswitch_1d
    const v0, 0x7f02010f

    goto :goto_0

    .line 265
    :pswitch_1e
    const v0, 0x7f020103

    goto :goto_0

    .line 269
    :pswitch_1f
    const v0, 0x7f0200d7

    goto :goto_0

    .line 271
    :pswitch_20
    const v0, 0x7f0200d8

    goto :goto_0

    .line 273
    :pswitch_21
    const v0, 0x7f0200de

    goto :goto_0

    .line 280
    :cond_0
    packed-switch p0, :pswitch_data_1

    :pswitch_22
    move v0, v1

    .line 356
    goto/16 :goto_0

    :pswitch_23
    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 284
    :pswitch_24
    const v0, 0x7f0200ca

    goto/16 :goto_0

    .line 286
    :pswitch_25
    const v0, 0x7f0200d6

    goto/16 :goto_0

    .line 288
    :pswitch_26
    const v0, 0x7f0200d9

    goto/16 :goto_0

    .line 290
    :pswitch_27
    const v0, 0x7f0200e0

    goto/16 :goto_0

    .line 292
    :pswitch_28
    const v0, 0x7f0200e1

    goto/16 :goto_0

    .line 294
    :pswitch_29
    const v0, 0x7f0200da

    goto/16 :goto_0

    .line 296
    :pswitch_2a
    const v0, 0x7f0200d1

    goto/16 :goto_0

    .line 298
    :pswitch_2b
    const v0, 0x7f0200d2

    goto/16 :goto_0

    .line 300
    :pswitch_2c
    const v0, 0x7f0200d4

    goto/16 :goto_0

    :pswitch_2d
    move v0, v2

    .line 302
    goto/16 :goto_0

    .line 304
    :pswitch_2e
    const v0, 0x7f0200dd

    goto/16 :goto_0

    :pswitch_2f
    move v0, v3

    .line 306
    goto/16 :goto_0

    .line 308
    :pswitch_30
    const v0, 0x7f0200e2

    goto/16 :goto_0

    .line 311
    :pswitch_31
    const v0, 0x7f0200db

    goto/16 :goto_0

    .line 313
    :pswitch_32
    const v0, 0x7f0200d3

    goto/16 :goto_0

    .line 315
    :pswitch_33
    const v0, 0x7f0200d5

    goto/16 :goto_0

    :pswitch_34
    move v0, v4

    .line 317
    goto/16 :goto_0

    .line 319
    :pswitch_35
    const v0, 0x7f0200dc

    goto/16 :goto_0

    .line 325
    :pswitch_36
    const v0, 0x7f0200cc

    goto/16 :goto_0

    :pswitch_37
    move v0, v4

    .line 327
    goto/16 :goto_0

    .line 329
    :pswitch_38
    const v0, 0x7f0200d4

    goto/16 :goto_0

    :pswitch_39
    move v0, v2

    .line 331
    goto/16 :goto_0

    .line 333
    :pswitch_3a
    const v0, 0x7f0200dd

    goto/16 :goto_0

    :pswitch_3b
    move v0, v3

    .line 335
    goto/16 :goto_0

    .line 337
    :pswitch_3c
    const v0, 0x7f0200e2

    goto/16 :goto_0

    .line 339
    :pswitch_3d
    const v0, 0x7f0200d5

    goto/16 :goto_0

    .line 341
    :pswitch_3e
    const v0, 0x7f0200dc

    goto/16 :goto_0

    .line 346
    :pswitch_3f
    const v0, 0x7f0200cd

    goto/16 :goto_0

    .line 350
    :pswitch_40
    const v0, 0x7f0200d7

    goto/16 :goto_0

    .line 352
    :pswitch_41
    const v0, 0x7f0200d8

    goto/16 :goto_0

    .line 354
    :pswitch_42
    const v0, 0x7f0200de

    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_9
        :pswitch_20
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_16
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_15
        :pswitch_10
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
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 280
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2a
        :pswitch_41
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_3e
        :pswitch_1
        :pswitch_40
        :pswitch_42
        :pswitch_36
        :pswitch_31
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_36
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public static getWeatherPressIcon(IZ)I
    .locals 5
    .param p0, "type"    # I
    .param p1, "isNight"    # Z

    .prologue
    const v3, 0x7f02022d

    const v4, 0x7f02022c

    const v2, 0x7f02022b

    const v0, 0x7f020228

    const v1, 0x7f02023c

    .line 381
    if-eqz p1, :cond_0

    .line 382
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 539
    :goto_0
    :pswitch_1
    return v0

    .line 384
    :pswitch_2
    const v0, 0x7f020250

    goto :goto_0

    .line 386
    :pswitch_3
    const v0, 0x7f020240

    goto :goto_0

    .line 388
    :pswitch_4
    const v0, 0x7f020233

    goto :goto_0

    .line 390
    :pswitch_5
    const v0, 0x7f02024b

    goto :goto_0

    .line 392
    :pswitch_6
    const v0, 0x7f020251

    goto :goto_0

    .line 394
    :pswitch_7
    const v0, 0x7f020252

    goto :goto_0

    .line 396
    :pswitch_8
    const v0, 0x7f02024c

    goto :goto_0

    .line 398
    :pswitch_9
    const v0, 0x7f020246

    goto :goto_0

    .line 400
    :pswitch_a
    const v0, 0x7f020247

    goto :goto_0

    .line 402
    :pswitch_b
    const v0, 0x7f020249

    goto :goto_0

    .line 404
    :pswitch_c
    const v0, 0x7f020243

    goto :goto_0

    .line 406
    :pswitch_d
    const v0, 0x7f02024f

    goto :goto_0

    .line 408
    :pswitch_e
    const v0, 0x7f020245

    goto :goto_0

    .line 410
    :pswitch_f
    const v0, 0x7f020253

    goto :goto_0

    .line 413
    :pswitch_10
    const v0, 0x7f02024d

    goto :goto_0

    .line 415
    :pswitch_11
    const v0, 0x7f020248

    goto :goto_0

    .line 417
    :pswitch_12
    const v0, 0x7f02024a

    goto :goto_0

    .line 419
    :pswitch_13
    const v0, 0x7f020244

    goto :goto_0

    .line 421
    :pswitch_14
    const v0, 0x7f02024e

    goto :goto_0

    .line 427
    :pswitch_15
    const v0, 0x7f020241

    goto :goto_0

    .line 429
    :pswitch_16
    const v0, 0x7f020244

    goto :goto_0

    .line 431
    :pswitch_17
    const v0, 0x7f020249

    goto :goto_0

    .line 433
    :pswitch_18
    const v0, 0x7f020243

    goto :goto_0

    .line 435
    :pswitch_19
    const v0, 0x7f02024f

    goto :goto_0

    .line 437
    :pswitch_1a
    const v0, 0x7f020245

    goto :goto_0

    .line 439
    :pswitch_1b
    const v0, 0x7f020253

    goto :goto_0

    .line 441
    :pswitch_1c
    const v0, 0x7f02024a

    goto :goto_0

    .line 443
    :pswitch_1d
    const v0, 0x7f02024e

    goto :goto_0

    .line 448
    :pswitch_1e
    const v0, 0x7f020242

    goto :goto_0

    .line 452
    :pswitch_1f
    const v0, 0x7f020234

    goto :goto_0

    .line 454
    :pswitch_20
    const v0, 0x7f020235

    goto :goto_0

    .line 456
    :pswitch_21
    const v0, 0x7f02023b

    goto :goto_0

    .line 463
    :cond_0
    packed-switch p0, :pswitch_data_1

    :pswitch_22
    move v0, v1

    .line 539
    goto/16 :goto_0

    :pswitch_23
    move v0, v1

    .line 465
    goto/16 :goto_0

    .line 467
    :pswitch_24
    const v0, 0x7f020227

    goto/16 :goto_0

    .line 469
    :pswitch_25
    const v0, 0x7f020233

    goto/16 :goto_0

    .line 471
    :pswitch_26
    const v0, 0x7f020236

    goto/16 :goto_0

    .line 473
    :pswitch_27
    const v0, 0x7f02023d

    goto/16 :goto_0

    .line 475
    :pswitch_28
    const v0, 0x7f02023e

    goto/16 :goto_0

    .line 477
    :pswitch_29
    const v0, 0x7f020237

    goto/16 :goto_0

    .line 479
    :pswitch_2a
    const v0, 0x7f02022e

    goto/16 :goto_0

    .line 481
    :pswitch_2b
    const v0, 0x7f02022f

    goto/16 :goto_0

    .line 483
    :pswitch_2c
    const v0, 0x7f020231

    goto/16 :goto_0

    :pswitch_2d
    move v0, v2

    .line 485
    goto/16 :goto_0

    .line 487
    :pswitch_2e
    const v0, 0x7f02023a

    goto/16 :goto_0

    :pswitch_2f
    move v0, v3

    .line 489
    goto/16 :goto_0

    .line 491
    :pswitch_30
    const v0, 0x7f02023f

    goto/16 :goto_0

    .line 494
    :pswitch_31
    const v0, 0x7f020238

    goto/16 :goto_0

    .line 496
    :pswitch_32
    const v0, 0x7f020230

    goto/16 :goto_0

    .line 498
    :pswitch_33
    const v0, 0x7f020232

    goto/16 :goto_0

    :pswitch_34
    move v0, v4

    .line 500
    goto/16 :goto_0

    .line 502
    :pswitch_35
    const v0, 0x7f020239

    goto/16 :goto_0

    .line 508
    :pswitch_36
    const v0, 0x7f020229

    goto/16 :goto_0

    :pswitch_37
    move v0, v4

    .line 510
    goto/16 :goto_0

    .line 512
    :pswitch_38
    const v0, 0x7f020231

    goto/16 :goto_0

    :pswitch_39
    move v0, v2

    .line 514
    goto/16 :goto_0

    .line 516
    :pswitch_3a
    const v0, 0x7f02023a

    goto/16 :goto_0

    :pswitch_3b
    move v0, v3

    .line 518
    goto/16 :goto_0

    .line 520
    :pswitch_3c
    const v0, 0x7f02023f

    goto/16 :goto_0

    .line 522
    :pswitch_3d
    const v0, 0x7f020232

    goto/16 :goto_0

    .line 524
    :pswitch_3e
    const v0, 0x7f020239

    goto/16 :goto_0

    .line 529
    :pswitch_3f
    const v0, 0x7f02022a

    goto/16 :goto_0

    .line 533
    :pswitch_40
    const v0, 0x7f020234

    goto/16 :goto_0

    .line 535
    :pswitch_41
    const v0, 0x7f020235

    goto/16 :goto_0

    .line 537
    :pswitch_42
    const v0, 0x7f02023b

    goto/16 :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_9
        :pswitch_20
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_16
        :pswitch_1d
        :pswitch_1
        :pswitch_1f
        :pswitch_21
        :pswitch_15
        :pswitch_10
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
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_15
        :pswitch_15
    .end packed-switch

    .line 463
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_2a
        :pswitch_41
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_37
        :pswitch_3e
        :pswitch_1
        :pswitch_40
        :pswitch_42
        :pswitch_36
        :pswitch_31
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_36
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public static isNight(J)Z
    .locals 8
    .param p0, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 361
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "timeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 365
    .local v2, "timeHour":I
    const/16 v5, 0x12

    if-ge v2, v5, :cond_0

    const/4 v5, 0x6

    if-gt v2, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 371
    .end local v2    # "timeHour":I
    :cond_1
    :goto_0
    return v4

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 368
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
