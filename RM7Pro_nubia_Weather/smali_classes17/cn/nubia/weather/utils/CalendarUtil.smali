.class public Lcn/nubia/weather/utils/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field private static final TIME_FORMAT_12:Ljava/lang/String; = "12"

.field private static final TIME_FORMAT_24:Ljava/lang/String; = "24"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarByTimeZone(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4
    .param p0, "timezoneName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 41
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 46
    .local v2, "tz":Ljava/util/TimeZone;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v2    # "tz":Ljava/util/TimeZone;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 25
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 26
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "dateString":Ljava/lang/String;
    return-object v2
.end method

.method public static getDateStringForSecond()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 33
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 34
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "dateString":Ljava/lang/String;
    return-object v2
.end method

.method public static getDayOfWeek(I)Ljava/lang/String;
    .locals 3
    .param p0, "todayOfWeek"    # I

    .prologue
    .line 87
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    rem-int/lit8 v1, p0, 0x7

    packed-switch v1, :pswitch_data_0

    .line 104
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 90
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 94
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    :pswitch_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 100
    :pswitch_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :pswitch_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getPublishDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "timeStirng"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 77
    .local v0, "cal":Ljava/util/Calendar;
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "time":[Ljava/lang/String;
    const/16 v5, 0xb

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v5, 0xc

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 81
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmm"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "dateString":Ljava/lang/String;
    return-object v2
.end method

.method public static getTimeFormatString(I)Ljava/lang/String;
    .locals 5
    .param p0, "hourOfDay"    # I

    .prologue
    .line 109
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 113
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 114
    .local v3, "is24Hour":Z
    const/4 v2, 0x0

    .line 115
    .local v2, "format":Ljava/text/DateFormat;
    if-eqz v3, :cond_0

    .line 116
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/DateFormat;
    const v4, 0x7f0900b0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v2    # "format":Ljava/text/DateFormat;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 123
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 118
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/DateFormat;
    const v4, 0x7f0900af

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v2    # "format":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getTimeIndex([Ljava/lang/String;)I
    .locals 8
    .param p0, "time"    # [Ljava/lang/String;

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 209
    if-eqz p0, :cond_0

    array-length v6, p0

    if-eqz v6, :cond_0

    aget-object v6, p0, v7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move v3, v5

    .line 225
    :cond_1
    :goto_0
    return v3

    .line 212
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 214
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 215
    .local v1, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmm"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 216
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "dateString":Ljava/lang/String;
    aget-object v6, p0, v7

    invoke-static {v6}, Lcn/nubia/weather/utils/CalendarUtil;->isRealTime(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 218
    const/4 v3, -0x1

    goto :goto_0

    .line 220
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 221
    aget-object v6, p0, v3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 220
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    .line 225
    goto :goto_0
.end method

.method public static getTodayYearAndMonth()Ljava/lang/String;
    .locals 5

    .prologue
    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 231
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 232
    .local v2, "year":I
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 233
    .local v1, "month":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUpdateDifference(Ljava/lang/String;)J
    .locals 8
    .param p0, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const-wide/16 v4, -0x1

    .line 138
    :goto_0
    return-wide v4

    .line 130
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "df":Ljava/text/DateFormat;
    const/4 v3, 0x0

    .line 134
    .local v3, "updateDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 138
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isPhoneTimeNight()Z
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPhoneTimeNight(Ljava/lang/String;)Z
    .locals 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    const/16 v2, 0x8

    .line 71
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 72
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRealDay(Ljava/lang/String;)Z
    .locals 10
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 142
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMddHHmm"

    invoke-direct {v4, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 143
    .local v4, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 144
    .local v0, "cal":Ljava/util/Calendar;
    const-string v6, ""

    .line 145
    .local v6, "realTime":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 165
    :goto_0
    return v7

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 150
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 151
    const/16 v8, 0xb

    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 162
    const/16 v8, 0xc

    invoke-virtual {v0, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 164
    .local v2, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 165
    .local v5, "format2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 153
    .end local v1    # "d":Ljava/util/Date;
    .end local v2    # "date":Ljava/util/Date;
    .end local v5    # "format2":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/text/ParseException;
    const-string v8, "CalendarUtil"

    const-string v9, "Exception occured when parsing time"

    invoke-static {v8, v9, v3}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 156
    .end local v3    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const-string v8, "CalendarUtil"

    const-string v9, "Exception "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isRealDay(Ljava/util/Date;)Z
    .locals 8
    .param p0, "d"    # Ljava/util/Date;

    .prologue
    const/16 v7, 0xb

    const/4 v5, 0x0

    .line 169
    if-nez p0, :cond_0

    .line 182
    :goto_0
    return v5

    .line 172
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmm"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 173
    .local v2, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    .local v0, "cal":Ljava/util/Calendar;
    const-string v4, ""

    .line 175
    .local v4, "realTime":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 176
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 177
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 180
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 181
    .local v1, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "format2":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

.method public static isRealTime(Ljava/lang/String;)Z
    .locals 9
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 186
    if-nez p0, :cond_0

    .line 205
    :goto_0
    return v6

    .line 189
    :cond_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    .local v4, "format":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 191
    .local v0, "cal":Ljava/util/Calendar;
    const-string v5, ""

    .line 193
    .local v5, "realTime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 194
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 195
    const/16 v7, 0xb

    const/16 v8, 0xb

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 196
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 202
    .end local v1    # "d":Ljava/util/Date;
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 203
    const/16 v7, 0xc

    invoke-virtual {v0, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 204
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 205
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 197
    .end local v2    # "date":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v3    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isTimeNightByTimezone(Ljava/lang/String;)Z
    .locals 4
    .param p0, "timezoneName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    .line 58
    invoke-static {p0}, Lcn/nubia/weather/utils/CalendarUtil;->getCalendarByTimeZone(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTimeNightByTimezone(Ljava/util/Date;Ljava/lang/String;)Z
    .locals 5
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "timezoneName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    invoke-static {p1}, Lcn/nubia/weather/utils/CalendarUtil;->getCalendarByTimeZone(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x12

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
