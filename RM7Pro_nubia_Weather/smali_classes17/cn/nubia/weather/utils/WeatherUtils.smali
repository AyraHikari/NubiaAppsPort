.class public Lcn/nubia/weather/utils/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherUtils"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    return-void
.end method

.method public static getEmptyHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .locals 5
    .param p0, "hourDate"    # Ljava/util/Date;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 548
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 549
    .local v1, "observeDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->setMinutes(I)V

    .line 550
    invoke-virtual {v1, v4}, Ljava/util/Date;->setSeconds(I)V

    .line 551
    new-instance v2, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-direct {v2}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;-><init>()V

    .line 552
    .local v2, "result":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setAreaID(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2, p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 554
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p0, v3}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 555
    return-object v2
.end method

.method public static getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .locals 18
    .param p0, "hourDate"    # Ljava/util/Date;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 559
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 560
    .local v2, "context":Landroid/content/Context;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 561
    .local v10, "observeDate":Ljava/util/Date;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/Date;->setMinutes(I)V

    .line 562
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/Date;->setSeconds(I)V

    .line 563
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 564
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v10

    .line 566
    :cond_0
    new-instance v12, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-direct {v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;-><init>()V

    .line 567
    .local v12, "result":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v7, "hours":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 570
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v7

    .line 571
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_3

    .line 572
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 573
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-object v12

    .line 577
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    .line 582
    .local v11, "observeModel":Lcn/nubia/weather/model/ObserveModel;
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    invoke-static {v10, v13}, Lcn/nubia/weather/utils/WeatherUtils;->getObserveDate(Ljava/util/Date;Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;)Ljava/util/Date;

    move-result-object v10

    .line 583
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x36ee80

    cmp-long v13, v14, v16

    if-ltz v13, :cond_5

    .line 584
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x6ddd00

    cmp-long v13, v14, v16

    if-gez v13, :cond_5

    const/4 v8, 0x1

    .line 585
    .local v8, "isNear":Z
    :goto_1
    const-string v13, "getHourTempAndWeather "

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 587
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_4

    if-nez v8, :cond_4

    .line 588
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_4
    if-eqz v11, :cond_6

    .line 590
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :try_start_1
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmTemperature()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 594
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWeather()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmType(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :goto_2
    :try_start_2
    const-string v13, "HOULY IRRE "

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 601
    :try_start_3
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindDirectionType(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindForce(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setAlarmData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 604
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 605
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 609
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 584
    .end local v8    # "isNear":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 595
    .restart local v8    # "isNear":Z
    :catch_0
    move-exception v4

    .line 596
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 597
    const-string v13, "WeatherUtils"

    const-string v14, "Convert setmTemp/setmType string to integer Fail. "

    invoke-static {v13, v14, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 684
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v13

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v13

    .line 606
    :catch_1
    move-exception v4

    .line 607
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 609
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v13

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v13

    .line 612
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 613
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .line 614
    .local v5, "hourInfo":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v3

    .line 615
    .local v3, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 616
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    .line 617
    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 620
    :try_start_8
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcTemp()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 621
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmType(Ljava/lang/Integer;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 627
    if-eqz v11, :cond_9

    .line 628
    :try_start_9
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindDirectionType(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindForce(Ljava/lang/String;)V

    .line 631
    :cond_9
    const-string v13, "HOULY IRRE "

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 633
    :try_start_a
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setAlarmData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 634
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 635
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 637
    :try_start_b
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 623
    :catch_2
    move-exception v4

    .line 624
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_c
    const-string v13, "WeatherUtils"

    const-string v14, "Convert setmTemp/setmType string to integer Fail. "

    invoke-static {v13, v14, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 637
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v13

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v13

    .line 642
    .end local v3    # "date":Ljava/util/Date;
    .end local v5    # "hourInfo":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    :cond_a
    const/4 v13, 0x0

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .line 643
    .restart local v5    # "hourInfo":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v6

    .line 644
    .local v6, "hourfcDate":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x36ee80

    cmp-long v13, v14, v16

    if-gtz v13, :cond_c

    .line 645
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_c

    const/4 v9, 0x1

    .line 646
    .local v9, "isNearHourfc":Z
    :goto_4
    if-eqz v9, :cond_d

    .line 647
    invoke-virtual {v12, v6}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    .line 648
    invoke-static {v2, v6, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 651
    :try_start_e
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcTemp()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 652
    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmType(Ljava/lang/Integer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 658
    if-eqz v11, :cond_b

    .line 659
    :try_start_f
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindDirectionType(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindForce(Ljava/lang/String;)V

    .line 662
    :cond_b
    const-string v13, "HOULY IRRE "

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 664
    :try_start_10
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setAlarmData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 665
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 666
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 668
    :try_start_11
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 645
    .end local v9    # "isNearHourfc":Z
    :cond_c
    const/4 v9, 0x0

    goto :goto_4

    .line 654
    .restart local v9    # "isNearHourfc":Z
    :catch_3
    move-exception v4

    .line 655
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_12
    const-string v13, "WeatherUtils"

    const-string v14, "Convert setmTemp/setmType string to integer Fail. "

    invoke-static {v13, v14, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 668
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v13

    :try_start_13
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v13

    .line 672
    :cond_d
    const-string v13, "HOULY IRRE "

    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 674
    :try_start_14
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 675
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 677
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils;->setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 679
    :try_start_15
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 679
    :catchall_4
    move-exception v13

    :try_start_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v13
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 684
    .end local v5    # "hourInfo":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    .end local v6    # "hourfcDate":Ljava/util/Date;
    .end local v9    # "isNearHourfc":Z
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 686
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v2, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getObserveDate(Ljava/util/Date;Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;)Ljava/util/Date;
    .locals 7
    .param p0, "observeHourDate"    # Ljava/util/Date;
    .param p1, "hourfcModel"    # Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .prologue
    const/4 v6, 0x0

    .line 292
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 293
    :cond_0
    new-instance p0, Ljava/util/Date;

    .end local p0    # "observeHourDate":Ljava/util/Date;
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 308
    :goto_0
    return-object p0

    .line 295
    .restart local p0    # "observeHourDate":Ljava/util/Date;
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v1

    .line 296
    .local v1, "hourDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 297
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 298
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setDate(I)V

    .line 299
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setMonth(I)V

    .line 300
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setYear(I)V

    .line 306
    .end local v0    # "d":Ljava/util/Date;
    :goto_1
    invoke-virtual {p0, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 307
    invoke-virtual {p0, v6}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setDate(I)V

    .line 303
    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setMonth(I)V

    .line 304
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/util/Date;->setYear(I)V

    goto :goto_1
.end method

.method public static getSimpleHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .locals 18
    .param p0, "hourDate"    # Ljava/util/Date;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 955
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 956
    .local v4, "context":Landroid/content/Context;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 957
    .local v10, "observeDate":Ljava/util/Date;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/Date;->setMinutes(I)V

    .line 958
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/Date;->setSeconds(I)V

    .line 959
    new-instance v12, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-direct {v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;-><init>()V

    .line 960
    .local v12, "result":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setAreaID(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 962
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-static {v4, v0, v13}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 964
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    .line 965
    .local v11, "observeModel":Lcn/nubia/weather/model/ObserveModel;
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmTime()Ljava/util/Date;

    move-result-object v10

    .line 966
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x36ee80

    cmp-long v13, v14, v16

    if-ltz v13, :cond_2

    .line 967
    invoke-virtual/range {p0 .. p0}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x6ddd00

    cmp-long v13, v14, v16

    if-gez v13, :cond_2

    const/4 v9, 0x1

    .line 968
    .local v9, "isNear":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz v9, :cond_3

    .line 970
    :cond_0
    :try_start_0
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmTemperature()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 971
    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmWeather()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmType(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    .end local v9    # "isNear":Z
    .end local v11    # "observeModel":Lcn/nubia/weather/model/ObserveModel;
    :cond_1
    :goto_1
    return-object v12

    .line 967
    .restart local v11    # "observeModel":Lcn/nubia/weather/model/ObserveModel;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 972
    .restart local v9    # "isNear":Z
    :catch_0
    move-exception v5

    .line 973
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 974
    const-string v13, "WeatherUtils"

    const-string v14, "Convert setmTemp/setmType string to integer Fail. "

    invoke-static {v13, v14, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 979
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "isNear":Z
    .end local v11    # "observeModel":Lcn/nubia/weather/model/ObserveModel;
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v8, "hours":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 981
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v8

    .line 982
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_1

    .line 985
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .line 986
    .local v6, "firstHour":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    const/4 v3, 0x0

    .line 987
    .local v3, "aimHour":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    if-eqz v6, :cond_1

    .line 990
    invoke-virtual {v6}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v7

    .line 991
    .local v7, "firstHourDate":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcn/nubia/weather/utils/TimeUtils;->getHourDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 992
    .local v2, "TimeDiff":I
    if-gtz v2, :cond_5

    .line 993
    move-object v3, v6

    .line 998
    :cond_4
    :goto_2
    if-eqz v3, :cond_1

    .line 1002
    :try_start_1
    invoke-virtual {v3}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcTemp()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 1003
    invoke-virtual {v3}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmType(Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1005
    :catch_1
    move-exception v5

    .line 1006
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "WeatherUtils"

    const-string v14, "Convert setmTemp/setmType string to integer Fail. "

    invoke-static {v13, v14, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 994
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v2, v13, :cond_4

    .line 995
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "aimHour":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    check-cast v3, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .restart local v3    # "aimHour":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    goto :goto_2
.end method

.method public static getUnifiedDayTemp(Ljava/lang/Float;Ljava/lang/String;)V
    .locals 0
    .param p0, "dayTemp"    # Ljava/lang/Float;
    .param p1, "currentTemp"    # Ljava/lang/String;

    .prologue
    .line 1016
    return-void
.end method

.method private static setAlarmData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 10
    .param p0, "result"    # Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    .line 313
    .local v0, "alarmModel":Lcn/nubia/weather/model/AlarmModel;
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    const/4 v1, 0x0

    .line 316
    .local v1, "alarmTime":[Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_1

    .line 317
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/String;

    .line 318
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 319
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 320
    .local v3, "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    invoke-virtual {v3}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    .end local v3    # "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :cond_0
    invoke-static {v1}, Lcn/nubia/weather/model/ModelHelper;->findRecentlyAlarmIndex([Ljava/lang/String;)I

    move-result v6

    .line 323
    .local v6, "maxAlarmTimeIndex":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 324
    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 325
    invoke-virtual {v9}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmLevelName()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "level":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 327
    invoke-virtual {v9}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmClassName()Ljava/lang/String;

    move-result-object v8

    .line 328
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 329
    invoke-virtual {v9}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v7

    .line 330
    .local v7, "time":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmAlarmLevel(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, v8}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmAlarmType(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v7}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmAlarmTime(Ljava/lang/String;)V

    .line 336
    .end local v1    # "alarmTime":[Ljava/lang/String;
    .end local v2    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v4    # "i":I
    .end local v5    # "level":Ljava/lang/String;
    .end local v6    # "maxAlarmTimeIndex":I
    .end local v7    # "time":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 11
    .param p0, "result"    # Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 339
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setAreaID(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 341
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v3

    .line 342
    .local v3, "forecast1ds":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v2, "dayType":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v6, "nightType":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v1, "dayTemp":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v5, "nightTemp":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    .line 347
    .local v9, "tomorrowIndex":I
    const-string v7, ""

    .line 348
    .local v7, "temp":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 349
    invoke-virtual {p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayFcIndex()I

    move-result v0

    .line 350
    .local v0, "day":I
    if-ltz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lt v0, v10, :cond_1

    .line 394
    .end local v0    # "day":I
    .end local v1    # "dayTemp":Ljava/lang/StringBuilder;
    .end local v2    # "dayType":Ljava/lang/StringBuilder;
    .end local v3    # "forecast1ds":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v5    # "nightTemp":Ljava/lang/StringBuilder;
    .end local v6    # "nightType":Ljava/lang/StringBuilder;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v9    # "tomorrowIndex":I
    :cond_0
    :goto_0
    return-void

    .line 354
    .restart local v0    # "day":I
    .restart local v1    # "dayTemp":Ljava/lang/StringBuilder;
    .restart local v2    # "dayType":Ljava/lang/StringBuilder;
    .restart local v3    # "forecast1ds":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v5    # "nightTemp":Ljava/lang/StringBuilder;
    .restart local v6    # "nightType":Ljava/lang/StringBuilder;
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v9    # "tomorrowIndex":I
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 355
    .local v8, "todayForecast":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    add-int/lit8 v9, v0, 0x1

    .line 356
    invoke-virtual {p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayNightTemp()Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 357
    invoke-virtual {p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayNightTemp()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayDayTemp()Ljava/lang/Float;

    move-result-object v10

    if-nez v10, :cond_4

    .line 360
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_1
    invoke-virtual {v8}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v8}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    move v4, v9

    .local v4, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    .line 372
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 375
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 379
    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq v4, v10, :cond_3

    .line 382
    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v10, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 362
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayDayTemp()Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->intValue()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 377
    .restart local v4    # "i":I
    :cond_5
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 389
    .end local v0    # "day":I
    .end local v4    # "i":I
    .end local v8    # "todayForecast":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDayType(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmNightType(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDayTemp(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmNightTemp(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static setDataForCurrentHour(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 3
    .param p0, "result"    # Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 693
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v1

    .line 694
    .local v1, "observeModel":Lcn/nubia/weather/model/ObserveModel;
    if-eqz v1, :cond_0

    .line 695
    invoke-virtual {v1}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindDirectionType(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v1}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmWindForce(Ljava/lang/String;)V

    .line 699
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/weather/utils/WeatherUtils;->setAlarmData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 700
    invoke-static {p0, p1}, Lcn/nubia/weather/utils/WeatherUtils;->setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V

    .line 701
    invoke-static {p0, p1}, Lcn/nubia/weather/utils/WeatherUtils;->setCalendarData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setForecastData(Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 28
    .param p0, "result"    # Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .param p1, "weathermodel"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 400
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v6

    .line 403
    .local v6, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v6, :cond_2

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v18

    .line 405
    .local v18, "timezoneID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcn/nubia/weather/model/Forecast5dModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v8

    .line 408
    .local v8, "forecastDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 409
    .local v7, "forecastCalendar":Ljava/util/Calendar;
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 410
    const-string v23, "WeatherUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "forecastCalendar1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5

    .line 411
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xb

    .line 412
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xc

    .line 413
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 410
    invoke-static/range {v23 .. v24}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 417
    :try_start_0
    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    const-string v23, "WeatherUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "forecastCalendar2"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5

    .line 423
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xb

    .line 424
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xc

    .line 425
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 422
    invoke-static/range {v23 .. v24}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/16 v23, 0xb

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 428
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 430
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 431
    const-string v23, "WeatherUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "forecastCalendar3"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5

    .line 432
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xb

    .line 433
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xc

    .line 434
    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 431
    invoke-static/range {v23 .. v24}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 440
    invoke-static/range {v18 .. v18}, Lcn/nubia/weather/utils/CalendarUtil;->getCalendarByTimeZone(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 441
    .local v2, "currentCalendar":Ljava/util/Calendar;
    const-string v23, "WeatherUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "currentCalendar"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x5

    .line 442
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xb

    .line 443
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0xc

    .line 444
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 441
    invoke-static/range {v23 .. v24}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {v7}, Lcn/nubia/weather/utils/TimeUtils;->adaptToNatureDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .line 446
    invoke-static {v2}, Lcn/nubia/weather/utils/TimeUtils;->adaptToNatureDay(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 447
    const/16 v23, 0xb

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 448
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 449
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 450
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 452
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_1

    .line 453
    const-string v23, "WeatherUtils"

    const-string v24, "forecast>now, unify the time"

    invoke-static/range {v23 .. v24}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 456
    :cond_1
    const/4 v4, -0x1

    .line 457
    .local v4, "day":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v23

    .line 458
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    const-wide/32 v26, 0x5265c00

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v4, v0

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayFcIndex(I)V

    .line 462
    if-ltz v4, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v4, v0, :cond_3

    .line 544
    .end local v2    # "currentCalendar":Ljava/util/Calendar;
    .end local v4    # "day":I
    .end local v6    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v7    # "forecastCalendar":Ljava/util/Calendar;
    .end local v8    # "forecastDate":Ljava/util/Date;
    .end local v18    # "timezoneID":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 418
    .restart local v6    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v7    # "forecastCalendar":Ljava/util/Calendar;
    .restart local v8    # "forecastDate":Ljava/util/Date;
    .restart local v18    # "timezoneID":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 419
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 465
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "currentCalendar":Ljava/util/Calendar;
    .restart local v4    # "day":I
    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 466
    .local v19, "todayForecast":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    const-string v16, ""

    .line 467
    .local v16, "temp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v3

    .line 469
    .local v3, "currentTemp":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v23

    if-nez v23, :cond_7

    .line 470
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    cmpg-float v23, v23, v24

    if-gez v23, :cond_6

    .line 471
    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayNightTemp(Ljava/lang/Float;)V

    .line 472
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 496
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmHightLowTemp(Ljava/lang/String;)V

    .line 497
    const/4 v12, 0x0

    .line 498
    .local v12, "isNight":Z
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v14

    .line 499
    .local v14, "sunRiseTime":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v15

    .line 500
    .local v15, "sunSetTime":Ljava/util/Date;
    const/16 v21, 0x0

    .line 501
    .local v21, "tomorrowSunRiseTime":Ljava/util/Date;
    const/16 v22, 0x0

    .line 502
    .local v22, "tomorrowSunSetTime":Ljava/util/Date;
    add-int/lit8 v23, v4, 0x1

    if-lez v23, :cond_4

    add-int/lit8 v23, v4, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 503
    add-int/lit8 v23, v4, 0x1

    move/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 504
    .local v20, "tomorrowForecast":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-eqz v20, :cond_4

    .line 505
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v21

    .line 506
    invoke-virtual/range {v20 .. v20}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v22

    .line 509
    .end local v20    # "tomorrowForecast":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v17

    .line 510
    .local v17, "time":Ljava/util/Date;
    move-object/from16 v13, v22

    .line 511
    .local v13, "nextSunRiseSet":Ljava/util/Date;
    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    if-eqz v17, :cond_5

    .line 512
    invoke-virtual {v14, v15}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 513
    :cond_5
    invoke-static/range {v17 .. v18}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/util/Date;Ljava/lang/String;)Z

    move-result v12

    .line 514
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setIsNight(Z)V

    .line 515
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setNextSunRiseSet(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 474
    .end local v12    # "isNight":Z
    .end local v13    # "nextSunRiseSet":Ljava/util/Date;
    .end local v14    # "sunRiseTime":Ljava/util/Date;
    .end local v15    # "sunSetTime":Ljava/util/Date;
    .end local v17    # "time":Ljava/util/Date;
    .end local v21    # "tomorrowSunRiseTime":Ljava/util/Date;
    .end local v22    # "tomorrowSunSetTime":Ljava/util/Date;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayNightTemp(Ljava/lang/Float;)V

    .line 475
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 478
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    cmpg-float v23, v23, v24

    if-gez v23, :cond_8

    .line 479
    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayNightTemp(Ljava/lang/Float;)V

    .line 480
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayDayTemp(Ljava/lang/Float;)V

    .line 481
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 482
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 483
    :cond_8
    if-eqz v3, :cond_9

    .line 484
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    cmpl-float v23, v23, v24

    if-lez v23, :cond_9

    .line 485
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayNightTemp(Ljava/lang/Float;)V

    .line 486
    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayDayTemp(Ljava/lang/Float;)V

    .line 487
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 488
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 490
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayNightTemp(Ljava/lang/Float;)V

    .line 491
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTodayDayTemp(Ljava/lang/Float;)V

    .line 492
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 493
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 518
    .restart local v12    # "isNight":Z
    .restart local v13    # "nextSunRiseSet":Ljava/util/Date;
    .restart local v14    # "sunRiseTime":Ljava/util/Date;
    .restart local v15    # "sunSetTime":Ljava/util/Date;
    .restart local v17    # "time":Ljava/util/Date;
    .restart local v21    # "tomorrowSunRiseTime":Ljava/util/Date;
    .restart local v22    # "tomorrowSunSetTime":Ljava/util/Date;
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    .line 519
    .local v9, "isAfterSunrise":Z
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v10

    .line 520
    .local v10, "isAfterSunset":Z
    if-nez v21, :cond_c

    const/4 v11, 0x1

    .line 530
    .local v11, "isBeforeNextSunrise":Z
    :goto_3
    if-eqz v10, :cond_d

    if-eqz v11, :cond_d

    .line 531
    const/4 v12, 0x1

    .line 532
    move-object/from16 v13, v21

    .line 540
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setIsNight(Z)V

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setNextSunRiseSet(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 521
    .end local v11    # "isBeforeNextSunrise":Z
    :cond_c
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    goto :goto_3

    .line 533
    .restart local v11    # "isBeforeNextSunrise":Z
    :cond_d
    if-nez v9, :cond_e

    .line 534
    const/4 v12, 0x1

    .line 535
    move-object v13, v14

    goto :goto_4

    .line 536
    :cond_e
    if-eqz v9, :cond_b

    if-nez v10, :cond_b

    .line 537
    move-object v13, v15

    goto :goto_4
.end method
