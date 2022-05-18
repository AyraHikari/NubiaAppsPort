.class public Lcn/nubia/weather/utils/LanguageUtil;
.super Ljava/lang/Object;
.source "LanguageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LanguageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlarmArea(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "areaName"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 33
    :cond_0
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "observatory":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAlarmLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "alarmLevel"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "alarmLevels":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 120
    const-string v1, ""

    .line 135
    :goto_0
    return-object v1

    .line 122
    :cond_0
    const-string v1, "\u767d\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 124
    :cond_1
    const-string v1, "\u84dd\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_0

    .line 126
    :cond_2
    const-string v1, "\u9ec4\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const/4 v1, 0x2

    aget-object v1, v0, v1

    goto :goto_0

    .line 128
    :cond_3
    const-string v1, "\u6a59\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto :goto_0

    .line 130
    :cond_4
    const-string v1, "\u7ea2\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    const/4 v1, 0x4

    aget-object v1, v0, v1

    goto :goto_0

    .line 132
    :cond_5
    const-string v1, "\u9ed1\u8272"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 133
    const/4 v1, 0x5

    aget-object v1, v0, v1

    goto :goto_0

    .line 135
    :cond_6
    const-string v1, ""

    goto :goto_0
.end method

.method public static getAlarmType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "alarmType"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "alarmTypes":[Ljava/lang/String;
    if-nez p0, :cond_0

    .line 40
    const-string v1, ""

    .line 113
    :goto_0
    return-object v1

    .line 42
    :cond_0
    const-string v1, "\u53f0\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0

    .line 44
    :cond_1
    const-string v1, "\u66b4\u96e8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "\u66b4\u96ea"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    const/4 v1, 0x2

    aget-object v1, v0, v1

    goto :goto_0

    .line 48
    :cond_3
    const-string v1, "\u5bd2\u6f6e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    const/4 v1, 0x3

    aget-object v1, v0, v1

    goto :goto_0

    .line 50
    :cond_4
    const-string v1, "\u5927\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    const/4 v1, 0x4

    aget-object v1, v0, v1

    goto :goto_0

    .line 52
    :cond_5
    const-string v1, "\u6c99\u5c18\u66b4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 53
    const/4 v1, 0x5

    aget-object v1, v0, v1

    goto :goto_0

    .line 54
    :cond_6
    const-string v1, "\u9ad8\u6e29"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    const/4 v1, 0x6

    aget-object v1, v0, v1

    goto :goto_0

    .line 56
    :cond_7
    const-string v1, "\u5e72\u65f1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 57
    const/4 v1, 0x7

    aget-object v1, v0, v1

    goto :goto_0

    .line 58
    :cond_8
    const-string v1, "\u96f7\u7535"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 59
    const/16 v1, 0x8

    aget-object v1, v0, v1

    goto :goto_0

    .line 60
    :cond_9
    const-string v1, "\u51b0\u96f9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 61
    const/16 v1, 0x9

    aget-object v1, v0, v1

    goto :goto_0

    .line 62
    :cond_a
    const-string v1, "\u971c\u51bb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    const/16 v1, 0xa

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 64
    :cond_b
    const-string v1, "\u5927\u96fe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 65
    const/16 v1, 0xb

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 66
    :cond_c
    const-string v1, "\u973e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 67
    const/16 v1, 0xc

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 68
    :cond_d
    const-string v1, "\u9053\u8def\u7ed3\u51b0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "\u9053\u8def\u51b0\u96ea"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 69
    :cond_e
    const/16 v1, 0xd

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 70
    :cond_f
    const-string v1, "\u7070\u973e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 71
    const/16 v1, 0xe

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 72
    :cond_10
    const-string v1, "\u5bd2\u51b7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 73
    const/16 v1, 0xf

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 74
    :cond_11
    const-string v1, "\u96f7\u96e8\u5927\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 75
    const/16 v1, 0x10

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 76
    :cond_12
    const-string v1, "\u68ee\u6797\u706b\u9669"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 77
    const/16 v1, 0x11

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 78
    :cond_13
    const-string v1, "\u964d\u6e29"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 79
    const/16 v1, 0x12

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 80
    :cond_14
    const-string v1, "\u5e72\u70ed\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 81
    const/16 v1, 0x13

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 82
    :cond_15
    const-string v1, "\u4f4e\u6e29"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 83
    const/16 v1, 0x14

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 84
    :cond_16
    const-string v1, "\u51b0\u51bb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 85
    const/16 v1, 0x15

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 86
    :cond_17
    const-string v1, "\u91cd\u6c61\u67d3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 87
    const/16 v1, 0x16

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 88
    :cond_18
    const-string v1, "\u9f99\u5377\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 89
    const/16 v1, 0x17

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 90
    :cond_19
    const-string v1, "\u4f4e\u6e29\u51bb\u5bb3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 91
    const/16 v1, 0x18

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 92
    :cond_1a
    const-string v1, "\u70ed\u6d6a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 93
    const/16 v1, 0x19

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 94
    :cond_1b
    const-string v1, "\u96ea\u5d29"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 95
    const/16 v1, 0x1a

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 96
    :cond_1c
    const-string v1, "\u6d77\u4e0a\u5927\u98ce"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 97
    const/16 v1, 0x1b

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 98
    :cond_1d
    const-string v1, "\u9ad8\u6e29\u4e2d\u6691"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 99
    const/16 v1, 0x1c

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 100
    :cond_1e
    const-string v1, "\u8349\u539f\u706b\u9669"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 101
    const/16 v1, 0x1d

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 102
    :cond_1f
    const-string v1, "\u4f4e\u6e29\u96e8\u96ea\u51b0\u51bb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 103
    const/16 v1, 0x1e

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 104
    :cond_20
    const-string v1, "\u5927\u96ea"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 105
    const/16 v1, 0x1f

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 106
    :cond_21
    const-string v1, "\u6e0d\u6d9d\u98ce\u9669"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 107
    const/16 v1, 0x20

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 108
    :cond_22
    const-string v1, "\u5730\u8d28\u707e\u5bb3\u6c14\u8c61\u98ce\u9669"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 109
    const/16 v1, 0x21

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 110
    :cond_23
    const-string v1, "\u7a7a\u6c14\u91cd\u6c61\u67d3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 111
    const/16 v1, 0x22

    aget-object v1, v0, v1

    goto/16 :goto_0

    .line 113
    :cond_24
    const-string v1, ""

    goto/16 :goto_0
.end method

.method public static getRayLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "rayLevel"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, ""

    .line 144
    :goto_0
    return-object v1

    .line 143
    :cond_0
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "level":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRealFeelLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "rfLevel"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const-string v1, ""

    .line 152
    :goto_0
    return-object v1

    .line 151
    :cond_0
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "level":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getSportLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "valueStr"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "ret":Ljava/lang/String;
    const-wide/16 v6, 0x1

    .line 166
    .local v6, "value":D
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v3, v2

    .line 192
    .end local v2    # "ret":Ljava/lang/String;
    .local v3, "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 170
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 175
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09012a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "sport":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f000c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "sportLevels":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 178
    .local v1, "level":I
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_2

    .line 179
    const/4 v1, 0x0

    .line 189
    :goto_1
    if-ltz v1, :cond_1

    array-length v8, v5

    if-ge v1, v8, :cond_1

    .line 190
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v10, v5, v1

    aput-object v10, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v3, v2

    .line 192
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v1    # "level":I
    .end local v3    # "ret":Ljava/lang/String;
    .end local v4    # "sport":Ljava/lang/String;
    .end local v5    # "sportLevels":[Ljava/lang/String;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "LanguageUtil"

    const-string v9, "Exception when getting Sport Level."

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 173
    .end local v2    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v1    # "level":I
    .restart local v2    # "ret":Ljava/lang/String;
    .restart local v4    # "sport":Ljava/lang/String;
    .restart local v5    # "sportLevels":[Ljava/lang/String;
    :cond_2
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    .line 181
    const/4 v1, 0x1

    goto :goto_1

    .line 182
    :cond_3
    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    .line 183
    const/4 v1, 0x2

    goto :goto_1

    .line 184
    :cond_4
    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_5

    .line 185
    const/4 v1, 0x3

    goto :goto_1

    .line 187
    :cond_5
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public static getVisibilityLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "vbLevel"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, ""

    .line 160
    :goto_0
    return-object v1

    .line 159
    :cond_0
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "level":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isChinese()Z
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnglish()Z
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
