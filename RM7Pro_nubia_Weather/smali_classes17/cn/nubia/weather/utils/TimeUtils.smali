.class public Lcn/nubia/weather/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final CHINA_TIMEZONE:Ljava/lang/String; = "Asia/Shanghai"

.field public static final DATE_PATTERN_HH_mm:Ljava/lang/String; = "HH:mm"

.field public static final DATE_PATTERN_yyyyMMddHHmm:Ljava/lang/String; = "yyyyMMddHHmm"

.field public static final DATE_PATTERN_yyyy_MM_DD_HH_mm:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final TAG:Ljava/lang/String; = "TimeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adaptToNatureDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 279
    if-nez p0, :cond_1

    .line 280
    const/4 p0, 0x0

    .line 286
    .local v0, "hour":I
    :cond_0
    :goto_0
    return-object p0

    .line 282
    .end local v0    # "hour":I
    :cond_1
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 283
    .restart local v0    # "hour":I
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 284
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public static formatISOStyleTimeStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "isoDate"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 129
    :goto_0
    return-object v2

    .line 120
    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 123
    .local v0, "date":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 125
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const-string v4, "TimeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formatISOStyleTimeStr e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentHour()I
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 340
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 341
    .local v1, "hour":I
    return v1
.end method

.method public static getDateByMileStr(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "mileTimeStr"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 148
    :goto_0
    return-object v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "result":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/util/Date;

    .end local v1    # "result":Ljava/util/Date;
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "result":Ljava/util/Date;
    goto :goto_0

    .line 144
    .end local v1    # "result":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 146
    .restart local v1    # "result":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 63
    :goto_0
    return-object v2

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 58
    .local v2, "result":Ljava/util/Date;
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 60
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/util/Date;

    .end local v2    # "result":Ljava/util/Date;
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .restart local v2    # "result":Ljava/util/Date;
    goto :goto_0
.end method

.method public static getDetailedHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "timezoneName"    # Ljava/lang/String;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 210
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 211
    .local v2, "is24Hour":Z
    const/4 v1, 0x0

    .line 212
    .local v1, "format":Ljava/text/DateFormat;
    if-eqz v2, :cond_2

    .line 213
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v3, 0x7f090134

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v1    # "format":Ljava/text/DateFormat;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    :try_start_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_1
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 215
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v3, 0x7f090133

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v1    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHHmmTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "stampTime"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHHmmTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "stampTime"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 353
    .local v0, "date":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/Date;

    .end local v0    # "date":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 356
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getHHmmTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 360
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "format":Ljava/text/SimpleDateFormat;
    if-nez p0, :cond_0

    .line 362
    new-instance p0, Ljava/util/Date;

    .end local p0    # "date":Ljava/util/Date;
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 364
    .restart local p0    # "date":Ljava/util/Date;
    :cond_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHourDiff(Ljava/util/Date;Ljava/util/Date;)I
    .locals 8
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 368
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 369
    :cond_0
    const/4 v2, 0x0

    .line 373
    :goto_0
    return v2

    .line 371
    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 372
    .local v0, "diff":J
    const-wide/32 v4, 0x36ee80

    div-long v4, v0, v4

    long-to-int v2, v4

    .line 373
    .local v2, "hour":I
    goto :goto_0
.end method

.method public static getHourStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 152
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 153
    .local v1, "is24Hour":Z
    const/4 v0, 0x0

    .line 154
    .local v0, "format":Ljava/text/DateFormat;
    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const v2, 0x7f0900b0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v0    # "format":Ljava/text/DateFormat;
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 157
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    const v2, 0x7f0900af

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getHourStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHourStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStr"    # Ljava/lang/String;
    .param p2, "timezoneName"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v4, "yyyyMMddHHmm"

    invoke-static {p1, v4}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 167
    .local v3, "time":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 168
    .local v2, "is24Hour":Z
    const/4 v1, 0x0

    .line 169
    .local v1, "format":Ljava/text/DateFormat;
    if-eqz v2, :cond_1

    .line 170
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v4, 0x7f090134

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    .restart local v1    # "format":Ljava/text/DateFormat;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    :try_start_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_1
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 172
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v4, 0x7f090133

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v1    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHourStr(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "timezoneName"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Ljava/util/Date;

    .end local p1    # "date":Ljava/util/Date;
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 190
    .restart local p1    # "date":Ljava/util/Date;
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    .line 191
    .local v2, "is24Hour":Z
    const/4 v1, 0x0

    .line 192
    .local v1, "format":Ljava/text/DateFormat;
    if-eqz v2, :cond_2

    .line 193
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v3, 0x7f0900b0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v1    # "format":Ljava/text/DateFormat;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    :try_start_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 195
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "format":Ljava/text/DateFormat;
    const v3, 0x7f0900af

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v1    # "format":Ljava/text/DateFormat;
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHourTimes(Landroid/content/Context;)[Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 290
    const/4 v2, 0x6

    .line 291
    .local v2, "hourSize":I
    new-array v1, v2, [Ljava/util/Date;

    .line 292
    .local v1, "hourDates":[Ljava/util/Date;
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    .line 293
    .local v4, "sixHours":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 294
    .local v6, "timeMillis":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 295
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 296
    invoke-virtual {v0, v10}, Ljava/util/Date;->setSeconds(I)V

    .line 297
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 298
    new-instance v5, Ljava/util/Date;

    const v8, 0x36ee80

    mul-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    add-long/2addr v8, v6

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v5, v1, v3

    .line 299
    aget-object v5, v1, v3

    invoke-virtual {v5, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 300
    aget-object v5, v1, v3

    invoke-virtual {v5, v10}, Ljava/util/Date;->setSeconds(I)V

    .line 301
    aget-object v5, v1, v3

    invoke-static {p0, v5}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 303
    :cond_0
    array-length v5, v4

    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-lez v3, :cond_2

    .line 304
    aget-object v5, v4, v3

    if-eqz v5, :cond_1

    .line 305
    aget-object v5, v4, v3

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, v3, -0x1

    aget-object v8, v4, v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    aget-object v5, v4, v3

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 303
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 310
    :cond_2
    return-object v4
.end method

.method public static getISODateByStr(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "isoDate"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 85
    :goto_0
    return-object v3

    .line 77
    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, "result":Ljava/util/Date;
    :try_start_0
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    .line 80
    .local v2, "parser":Lorg/joda/time/format/DateTimeFormatter;
    invoke-virtual {v2, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 81
    .local v0, "dateTime":Lorg/joda/time/DateTime;
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 82
    .end local v0    # "dateTime":Lorg/joda/time/DateTime;
    .end local v2    # "parser":Lorg/joda/time/format/DateTimeFormatter;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNatureDayISODateByStr(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "isoDate"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "date":Ljava/util/Date;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p0}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 99
    const/16 v3, 0xb

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 101
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    .end local v0    # "calendar":Ljava/util/Calendar;
    :goto_0
    return-object v1

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRequestDate()Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v7, 0xf

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 324
    .local v6, "zoneOffset":I
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 326
    .local v3, "dstOffset":I
    const/16 v7, 0xe

    add-int v8, v6, v3

    neg-int v8, v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "dateString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 330
    .local v1, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmm"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 331
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0xb

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 335
    .end local v1    # "date":Ljava/util/Date;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    .line 332
    :catch_0
    move-exception v4

    .line 333
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z
    .locals 4
    .param p0, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v3, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "firstHourTime":Ljava/util/Date;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "hours":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v0

    .line 256
    .end local v1    # "hours":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    :cond_0
    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 259
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isDataUpToDate(Ljava/util/Date;)Z
    .locals 8
    .param p0, "releaseTime"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 264
    if-nez p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v3

    .line 267
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 269
    .local v2, "currentTime":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 270
    .local v0, "TimeDiff":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x6ddd00

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 275
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNight(J)Z
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 228
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 230
    .local v1, "hour":I
    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNight(Ljava/util/Date;)Z
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 234
    if-nez p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 238
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 239
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 240
    .local v1, "hour":I
    const/16 v3, 0x12

    if-ge v1, v3, :cond_2

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isNightNow()Z
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isNight(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public static isSameHour(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 13
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    const/16 v12, 0xb

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v6, v7

    .line 49
    :cond_1
    :goto_0
    return v6

    .line 37
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 40
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_4

    move v5, v6

    .line 43
    .local v5, "isSameYear":Z
    :goto_1
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_5

    move v4, v6

    .line 44
    .local v4, "isSameMonth":Z
    :goto_2
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 45
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_6

    move v2, v6

    .line 46
    .local v2, "isSameDay":Z
    :goto_3
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 47
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_7

    move v3, v6

    .line 49
    .local v3, "isSameHour":Z
    :goto_4
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    :cond_3
    move v6, v7

    goto :goto_0

    .end local v2    # "isSameDay":Z
    .end local v3    # "isSameHour":Z
    .end local v4    # "isSameMonth":Z
    .end local v5    # "isSameYear":Z
    :cond_4
    move v5, v7

    .line 42
    goto :goto_1

    .restart local v5    # "isSameYear":Z
    :cond_5
    move v4, v7

    .line 43
    goto :goto_2

    .restart local v4    # "isSameMonth":Z
    :cond_6
    move v2, v7

    .line 45
    goto :goto_3

    .restart local v2    # "isSameDay":Z
    :cond_7
    move v3, v7

    .line 47
    goto :goto_4
.end method

.method public static isTimeDiffWithinADay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p0, "d1"    # Ljava/util/Date;
    .param p1, "d2"    # Ljava/util/Date;

    .prologue
    .line 377
    invoke-static {p0, p1}, Lcn/nubia/weather/utils/TimeUtils;->getHourDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 378
    .local v0, "hourDiff":I
    if-ltz v0, :cond_0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 379
    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
