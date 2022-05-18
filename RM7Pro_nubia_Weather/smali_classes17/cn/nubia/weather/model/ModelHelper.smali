.class public Lcn/nubia/weather/model/ModelHelper;
.super Ljava/lang/Object;
.source "ModelHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelHelper"

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static findRecentlyAlarmIndex([Ljava/lang/String;)I
    .locals 10
    .param p0, "alarmTimes"    # [Ljava/lang/String;

    .prologue
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .local v4, "maxAlarmTime":J
    const/4 v3, -0x1

    .line 84
    .local v3, "maxAlarmTimeIndex":I
    if-nez p0, :cond_0

    move v6, v3

    .line 104
    .end local v3    # "maxAlarmTimeIndex":I
    .local v6, "maxAlarmTimeIndex":I
    :goto_0
    return v6

    .line 87
    .end local v6    # "maxAlarmTimeIndex":I
    .restart local v3    # "maxAlarmTimeIndex":I
    :cond_0
    array-length v8, p0

    new-array v0, v8, [J

    .line 88
    .local v0, "alarmTimesInt":[J
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, p0

    if-ge v2, v8, :cond_3

    .line 91
    :try_start_0
    aget-object v8, p0, v2

    if-eqz v8, :cond_1

    .line 92
    aget-object v8, p0, v2

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    aput-wide v8, v0, v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :cond_1
    :goto_2
    aget-wide v8, v0, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 100
    aget-wide v8, v0, v2

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    .line 101
    move v3, v2

    .line 89
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v6, v3

    .line 104
    .end local v3    # "maxAlarmTimeIndex":I
    .restart local v6    # "maxAlarmTimeIndex":I
    goto :goto_0
.end method

.method public static getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "weather"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v0, 0x63

    .line 29
    .local v0, "index":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 33
    :goto_0
    sget-object v2, Lcn/nubia/weather/model/ModelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "weatherState":[Ljava/lang/String;
    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    .line 35
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 39
    :goto_1
    return-object v2

    .line 36
    :cond_0
    if-ltz v0, :cond_1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 37
    aget-object v2, v1, v0

    goto :goto_1

    .line 39
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    goto :goto_1

    .line 30
    .end local v1    # "weatherState":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getWindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "l3"    # Ljava/lang/String;
    .param p1, "l4"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v2, Lcn/nubia/weather/model/ModelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "level":Ljava/lang/String;
    sget-object v2, Lcn/nubia/weather/model/ModelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "breeze":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    return-object v2

    .line 49
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/nubia/weather/model/ModelHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090168

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 52
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static initContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sput-object p0, Lcn/nubia/weather/model/ModelHelper;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static setPastWeather(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "pastWeather"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "str":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, ""

    .line 126
    :goto_0
    return-object v1

    .line 112
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    :pswitch_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09009f

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 126
    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090080

    new-array v3, v4, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    goto :goto_1

    .line 118
    :pswitch_2
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090088

    new-array v3, v4, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static toAirQualityLevel(I)Ljava/lang/String;
    .locals 6
    .param p0, "num"    # I

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x96

    const/16 v3, 0x64

    const/16 v2, 0x32

    .line 56
    const-string v1, ""

    .line 57
    .local v1, "airLevel":Ljava/lang/String;
    move v0, p0

    .line 58
    .local v0, "air":I
    if-ltz v0, :cond_0

    if-gt v0, v2, :cond_0

    .line 59
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090041

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 61
    :cond_0
    if-le v0, v2, :cond_1

    if-gt v0, v3, :cond_1

    .line 62
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090042

    .line 63
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_1
    if-le v0, v3, :cond_2

    if-gt v0, v4, :cond_2

    .line 65
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090043

    .line 66
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_2
    if-le v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    .line 68
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090044

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_3
    if-le v0, v5, :cond_4

    const/16 v2, 0x12c

    if-gt v0, v2, :cond_4

    .line 71
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090045

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_4
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090046

    .line 75
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
