.class public Lcn/nubia/weather/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static final CALENDAR_APP_LAUNCHER_ACTIVITY:Ljava/lang/String; = "cn.nubia.calendar.AllInOneActivity"

.field private static final CALENDAR_PACKAGE:Ljava/lang/String; = "cn.nubia.calendar.preset"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleFormat(D)D
    .locals 4
    .param p0, "num"    # D

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 33
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getCalendarLauncherIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "calendarIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.calendar.preset"

    const-string v3, "cn.nubia.calendar.AllInOneActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v1, "calendarName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    return-object v0
.end method

.method public static getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "numStr"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWindDegree(Ljava/lang/String;)I
    .locals 4
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 72
    .local v0, "speedVaule":D
    const-wide v2, 0x3ff147ae147ae148L    # 1.08

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 107
    :goto_0
    return v2

    .line 74
    :cond_0
    const-wide v2, 0x40170a3d70a3d70aL    # 5.76

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const-wide v2, 0x40287ae147ae147bL    # 12.24

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 77
    const/4 v2, 0x2

    goto :goto_0

    .line 78
    :cond_2
    const-wide v2, 0x4033cccccccccccdL    # 19.8

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    .line 79
    const/4 v2, 0x3

    goto :goto_0

    .line 80
    :cond_3
    const-wide v2, 0x403ccccccccccccdL    # 28.8

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 81
    const/4 v2, 0x4

    goto :goto_0

    .line 82
    :cond_4
    const-wide v2, 0x404370a3d70a3d71L    # 38.88

    cmpg-double v2, v0, v2

    if-gez v2, :cond_5

    .line 83
    const/4 v2, 0x5

    goto :goto_0

    .line 84
    :cond_5
    const-wide v2, 0x4049051eb851eb85L    # 50.04

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    .line 85
    const/4 v2, 0x6

    goto :goto_0

    .line 86
    :cond_6
    const-wide v2, 0x404ef5c28f5c28f6L    # 61.92

    cmpg-double v2, v0, v2

    if-gez v2, :cond_7

    .line 87
    const/4 v2, 0x7

    goto :goto_0

    .line 88
    :cond_7
    const-wide v2, 0x4052b851eb851eb8L    # 74.88

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    .line 89
    const/16 v2, 0x8

    goto :goto_0

    .line 90
    :cond_8
    const-wide v2, 0x40560ccccccccccdL    # 88.2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_9

    .line 91
    const/16 v2, 0x9

    goto :goto_0

    .line 92
    :cond_9
    const-wide v2, 0x4059a66666666666L    # 102.6

    cmpg-double v2, v0, v2

    if-gez v2, :cond_a

    .line 93
    const/16 v2, 0xa

    goto :goto_0

    .line 94
    :cond_a
    const-wide v2, 0x405d6e147ae147aeL    # 117.72

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b

    .line 95
    const/16 v2, 0xb

    goto :goto_0

    .line 96
    :cond_b
    const-wide v2, 0x4060a66666666666L    # 133.2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_c

    .line 97
    const/16 v2, 0xc

    goto/16 :goto_0

    .line 98
    :cond_c
    const-wide v2, 0x4062accccccccccdL    # 149.4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_d

    .line 99
    const/16 v2, 0xd

    goto/16 :goto_0

    .line 100
    :cond_d
    const-wide v2, 0x4064ca3d70a3d70aL    # 166.32

    cmpg-double v2, v0, v2

    if-gez v2, :cond_e

    .line 101
    const/16 v2, 0xe

    goto/16 :goto_0

    .line 102
    :cond_e
    const-wide v2, 0x4066f33333333333L    # 183.6

    cmpg-double v2, v0, v2

    if-gez v2, :cond_f

    .line 103
    const/16 v2, 0xf

    goto/16 :goto_0

    .line 104
    :cond_f
    const-wide v2, 0x40693eb851eb851fL    # 201.96

    cmpg-double v2, v0, v2

    if-gez v2, :cond_10

    .line 105
    const/16 v2, 0x10

    goto/16 :goto_0

    .line 107
    :cond_10
    const/16 v2, 0x11

    goto/16 :goto_0
.end method

.method public static getWindDegreeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0}, Lcn/nubia/weather/utils/CommonUtil;->getWindDegree(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "degree":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 60
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isExistCalendarIntent(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "flag":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, "newIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "cn.nubia.calendar.preset"

    const-string v5, "cn.nubia.calendar.AllInOneActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 133
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 137
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    return v0
.end method
