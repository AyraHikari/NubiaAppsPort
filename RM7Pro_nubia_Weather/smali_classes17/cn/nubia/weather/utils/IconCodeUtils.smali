.class public Lcn/nubia/weather/utils/IconCodeUtils;
.super Ljava/lang/Object;
.source "IconCodeUtils.java"


# static fields
.field private static final CLEAR:I = 0x21

.field private static final CLOUDY:I = 0x7

.field private static final CLOUDY_W_FLURRIES:I = 0x14

.field private static final CLOUDY_W_SHOWERS:I = 0xd

.field private static final CLOUDY_W_SNOW:I = 0x17

.field private static final CLOUDY_W_T_STORMS:I = 0x10

.field private static final COLD:I = 0x1f

.field private static final DREARY:I = 0x8

.field private static final FLURRIES:I = 0x13

.field private static final FOG:I = 0xb

.field private static final FREEZING_RAIN:I = 0x1a

.field private static final HAZY_MOONLIGHT:I = 0x25

.field private static final HAZY_SUNSHINE:I = 0x5

.field private static final HOT:I = 0x1e

.field private static final ICE:I = 0x18

.field private static final INTERMITTENT_CLOUDS:I = 0x4

.field private static final INTERMITTENT_CLOUDS_NIGHT:I = 0x24

.field private static final MOSTLY_CLEAR:I = 0x22

.field private static final MOSTLY_CLOUDY:I = 0x6

.field private static final MOSTLY_CLOUDY_NIGHT:I = 0x26

.field private static final MOSTLY_CLOUDY_W_FLURRIES:I = 0x2b

.field private static final MOSTLY_CLOUDY_W_SHOWERS:I = 0x28

.field private static final MOSTLY_CLOUDY_W_SNOW:I = 0x2c

.field private static final MOSTLY_CLOUDY_W_T_STORMS:I = 0x2a

.field private static final MOSTLY_SUNNY:I = 0x2

.field private static final PARTLY_CLOUDY:I = 0x23

.field private static final PARTLY_CLOUDY_W_SHOWERS:I = 0x27

.field private static final PARTLY_CLOUDY_W_T_STORMS:I = 0x29

.field private static final PARTLY_SUNNY:I = 0x3

.field private static final PARTLY_SUNNY_W_FLURRIES:I = 0x15

.field private static final PARTLY_SUNNY_W_SHOWERS:I = 0xe

.field private static final PARTLY_SUNNY_W_T_STORMS:I = 0x11

.field private static final RAIN:I = 0x12

.field private static final RAIN_AND_SNOW:I = 0x1d

.field private static final SHOWERS:I = 0xc

.field private static final SLEET:I = 0x19

.field private static final SNOW:I = 0x16

.field private static final SUNNY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IconCodeUtils"

.field private static final T_STORMS:I = 0xf

.field private static final WINDY:I = 0x20


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static getWeatherCode(Ljava/lang/String;)I
    .locals 5
    .param p0, "iconCode"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x63

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    :goto_0
    return v2

    .line 62
    :cond_0
    const/16 v1, 0x63

    .line 64
    .local v1, "type":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 69
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IconCodeUtils"

    const-string v4, "parse icon code failed"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    .line 95
    :pswitch_4
    const/4 v2, 0x3

    goto :goto_0

    .line 101
    :pswitch_5
    const/4 v2, 0x4

    goto :goto_0

    .line 104
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 106
    :pswitch_7
    const/16 v2, 0x13

    goto :goto_0

    .line 108
    :pswitch_8
    const/4 v2, 0x7

    goto :goto_0

    .line 111
    :pswitch_9
    const/16 v2, 0x21

    goto :goto_0

    .line 117
    :pswitch_a
    const/16 v2, 0xd

    goto :goto_0

    .line 119
    :pswitch_b
    const/16 v2, 0xe

    goto :goto_0

    .line 121
    :pswitch_c
    const/16 v2, 0x12

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
