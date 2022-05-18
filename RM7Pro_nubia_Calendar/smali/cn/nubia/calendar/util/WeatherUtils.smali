.class public Lcn/nubia/calendar/util/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# static fields
.field public static final CLOUDY:I = 0x1

.field public static final DENSE_FOGGY:I = 0x20

.field public static final DUST:I = 0x1d

.field public static final FOGGY:I = 0x12

.field public static final HAZE:I = 0x35

.field public static final HEAVY_FOGGY:I = 0x39

.field public static final HEAVY_HAZE:I = 0x37

.field public static final HEAVY_RAIN:I = 0x9

.field public static final HEAVY_RAIN_TO_STORM:I = 0x17

.field public static final HEAVY_SNOW:I = 0x10

.field public static final HEAVY_STORM:I = 0xb

.field public static final HEAVY_TO_STORM_SNOW:I = 0x1c

.field public static final HEAVY_TO_VERY_HEAVY_STORM:I = 0x19

.field public static final ICE_RAIN:I = 0x13

.field public static final LIGHT_RAIN:I = 0x7

.field public static final LIGHT_SNOW:I = 0xe

.field public static final LIGHT_TO_MODERATE_RAIN:I = 0x15

.field public static final LIGHT_TO_MODERATE_SNOW:I = 0x1a

.field public static final MODERATE_HAZE:I = 0x36

.field public static final MODERATE_RAIN:I = 0x8

.field public static final MODERATE_SNOW:I = 0xf

.field public static final MODERATE_TO_HEAVY_RAIN:I = 0x16

.field public static final MODERATE_TO_HEAVY_SNOW:I = 0x1b

.field public static MONTH_VIEW_WEATHER:Ljava/lang/String; = null

.field public static final NO_VALUE_FLAG:I = 0x63

.field public static final OVERCAST:I = 0x2

.field public static final SAND:I = 0x1e

.field public static final SANDSTORM:I = 0x14

.field public static final SHOWER:I = 0x3

.field public static final SLEET:I = 0x6

.field public static final SNOW:I = 0x21

.field public static final SNOW_SHOWER:I = 0xd

.field public static final SNOW_STORM:I = 0x11

.field public static final STORM:I = 0xa

.field public static final STORM_TO_HEAVY_STORM:I = 0x18

.field public static final STRONG_DENSE_FOGGY:I = 0x31

.field public static final STRONG_FOGGY:I = 0x3a

.field public static final STRONG_HAZE:I = 0x38

.field public static final STRONG_SAND_STORM:I = 0x1f

.field public static final SUNNY:I = 0x0

.field public static final THUNDER_SHOWER:I = 0x4

.field public static final THUNDER_SHOWER_HAIL:I = 0x5

.field public static final VERY_HEAVY_STORM:I = 0xc

.field public static final WEATHERPACKAGE:Ljava/lang/String; = "cn.nubia.weather"

.field public static final WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

.field private static isDay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/util/WeatherUtils;->isDay:Z

    .line 66
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecast"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/WeatherUtils;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "OpenWeatherApplication"

    sput-object v0, Lcn/nubia/calendar/util/WeatherUtils;->MONTH_VIEW_WEATHER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static declared-synchronized getWeatherFromWeatherProvider(Landroid/content/Context;)Z
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 261
    const-class v23, Lcn/nubia/calendar/util/WeatherUtils;

    monitor-enter v23

    :try_start_0
    const-string v22, "WeatherUtils"

    const-string v24, "getWeatherFromWeatherProvider"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v17, 0x1

    .line 263
    .local v17, "returnFlag":Z
    const-string v12, "getCurrentWeatherForCalendar"

    .line 264
    .local v12, "futuremethod":Ljava/lang/String;
    const-string v20, "getCurrentWeather"

    .line 265
    .local v20, "todaymethod":Ljava/lang/String;
    const-string v9, ""

    .line 266
    .local v9, "futurecity":Ljava/lang/String;
    const-string v11, ""

    .line 267
    .local v11, "futuredayType":Ljava/lang/String;
    const-string v10, ""

    .line 268
    .local v10, "futuredayTemp":Ljava/lang/String;
    const-string v14, ""

    .line 269
    .local v14, "futurenightType":Ljava/lang/String;
    const-string v13, ""

    .line 270
    .local v13, "futurenightTemp":Ljava/lang/String;
    const-string v5, ""

    .line 271
    .local v5, "currentType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 272
    .local v15, "isNight":Z
    const-string v22, "cn.nubia.weather"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/WeatherUtils;->isExistWeatherApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 273
    const-string v22, "WeatherUtils"

    const-string v24, "isExistWeatherApp no"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    const/16 v22, 0x0

    .line 326
    :goto_0
    monitor-exit v23

    return v22

    .line 276
    :cond_0
    :try_start_1
    const-string v22, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecast"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 279
    .local v21, "weatherUir":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 280
    .local v8, "futurebundle":Landroid/os/Bundle;
    const/16 v19, 0x0

    .line 282
    .local v19, "todaybundle":Landroid/os/Bundle;
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v19

    .line 302
    :goto_1
    if-eqz v8, :cond_1

    .line 303
    :try_start_3
    const-string v22, "city"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    const-string v22, "WeatherUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "city: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v22, "dayType"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 306
    const-string v22, "nightType"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 307
    const-string v22, "dayTemp"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 308
    const-string v22, "nightTemp"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 310
    :cond_1
    if-eqz v19, :cond_2

    .line 311
    const-string v22, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {}, Lcn/nubia/calendar/util/WeatherUtils;->isPhoneTimeNight()Z

    move-result v6

    .line 314
    .local v6, "defaultIsNight":Z
    const-string v22, "isNight"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 316
    .end local v6    # "defaultIsNight":Z
    :cond_2
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/WeatherUtils;->getWeatherSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 317
    .local v16, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    .line 318
    .local v18, "spe":Landroid/content/SharedPreferences$Editor;
    const-string v22, "city"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 319
    const-string v22, "dayType"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    const-string v22, "nightType"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v22, "dayTemp"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    const-string v22, "nightTemp"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    const-string v22, "currentType"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    const-string v22, "isNight"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->apply()V

    move/from16 v22, v17

    .line 326
    goto/16 :goto_0

    .line 286
    .end local v16    # "pref":Landroid/content/SharedPreferences;
    .end local v18    # "spe":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v7

    .line 287
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x0

    .line 288
    const/16 v20, 0x0

    .line 289
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 290
    const/16 v17, 0x0

    .line 301
    goto/16 :goto_1

    .line 291
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 292
    .local v7, "e":Ljava/lang/SecurityException;
    const/4 v12, 0x0

    .line 293
    const/16 v20, 0x0

    .line 294
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 295
    const/16 v17, 0x0

    .line 301
    goto/16 :goto_1

    .line 296
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 297
    .local v7, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 298
    const/16 v20, 0x0

    .line 299
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 261
    .end local v5    # "currentType":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "futurebundle":Landroid/os/Bundle;
    .end local v9    # "futurecity":Ljava/lang/String;
    .end local v10    # "futuredayTemp":Ljava/lang/String;
    .end local v11    # "futuredayType":Ljava/lang/String;
    .end local v12    # "futuremethod":Ljava/lang/String;
    .end local v13    # "futurenightTemp":Ljava/lang/String;
    .end local v14    # "futurenightType":Ljava/lang/String;
    .end local v15    # "isNight":Z
    .end local v17    # "returnFlag":Z
    .end local v19    # "todaybundle":Landroid/os/Bundle;
    .end local v20    # "todaymethod":Ljava/lang/String;
    .end local v21    # "weatherUir":Landroid/net/Uri;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22
.end method

.method public static getWeatherIcon(I)I
    .locals 6
    .param p0, "type"    # I

    .prologue
    const v4, 0x7f0200f2

    const v3, 0x7f0200f1

    const v1, 0x7f0200ef

    const v2, 0x7f0200dd

    const v0, 0x7f0200fa

    .line 100
    sget-boolean v5, Lcn/nubia/calendar/util/WeatherUtils;->isDay:Z

    if-eqz v5, :cond_0

    .line 101
    packed-switch p0, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    return v0

    .line 105
    :pswitch_1
    const v0, 0x7f0200dc

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const v0, 0x7f0200f3

    goto :goto_0

    .line 111
    :pswitch_4
    const v0, 0x7f0200fb

    goto :goto_0

    .line 113
    :pswitch_5
    const v0, 0x7f0200fc

    goto :goto_0

    .line 115
    :pswitch_6
    const v0, 0x7f0200f4

    goto :goto_0

    .line 117
    :pswitch_7
    const v0, 0x7f0200e6

    goto :goto_0

    .line 119
    :pswitch_8
    const v0, 0x7f0200e7

    goto :goto_0

    .line 121
    :pswitch_9
    const v0, 0x7f0200eb

    goto :goto_0

    .line 123
    :pswitch_a
    const v0, 0x7f0200e0

    goto :goto_0

    .line 125
    :pswitch_b
    const v0, 0x7f0200f7

    goto :goto_0

    .line 127
    :pswitch_c
    const v0, 0x7f0200e3

    goto :goto_0

    .line 129
    :pswitch_d
    const v0, 0x7f0200fe

    goto :goto_0

    .line 131
    :pswitch_e
    const v0, 0x7f0200f5

    goto :goto_0

    .line 134
    :pswitch_f
    const v0, 0x7f0200e8

    goto :goto_0

    .line 136
    :pswitch_10
    const v0, 0x7f0200ec

    goto :goto_0

    .line 138
    :pswitch_11
    const v0, 0x7f0200e2

    goto :goto_0

    .line 140
    :pswitch_12
    const v0, 0x7f0200f6

    goto :goto_0

    .line 145
    :pswitch_13
    const v0, 0x7f0200de

    goto :goto_0

    .line 147
    :pswitch_14
    const v0, 0x7f0200ee

    goto :goto_0

    .line 149
    :pswitch_15
    const v0, 0x7f0200e9

    goto :goto_0

    .line 151
    :pswitch_16
    const v0, 0x7f0200ed

    goto :goto_0

    .line 153
    :pswitch_17
    const v0, 0x7f0200e1

    goto :goto_0

    .line 155
    :pswitch_18
    const v0, 0x7f0200f8

    goto :goto_0

    .line 157
    :pswitch_19
    const v0, 0x7f0200e5

    goto :goto_0

    .line 159
    :pswitch_1a
    const v0, 0x7f0200ea

    goto :goto_0

    .line 161
    :pswitch_1b
    const v0, 0x7f0200e4

    goto :goto_0

    .line 166
    :pswitch_1c
    const v0, 0x7f0200df

    goto :goto_0

    :pswitch_1d
    move v0, v2

    .line 168
    goto :goto_0

    :pswitch_1e
    move v0, v3

    .line 170
    goto :goto_0

    :pswitch_1f
    move v0, v4

    .line 172
    goto :goto_0

    .line 174
    :pswitch_20
    const v0, 0x7f0200f9

    goto :goto_0

    .line 179
    :cond_0
    packed-switch p0, :pswitch_data_1

    :pswitch_21
    goto :goto_0

    .line 181
    :pswitch_22
    const v0, 0x7f020143

    goto :goto_0

    .line 183
    :pswitch_23
    const v0, 0x7f02012d

    goto/16 :goto_0

    :pswitch_24
    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 187
    :pswitch_25
    const v0, 0x7f02013c

    goto/16 :goto_0

    .line 189
    :pswitch_26
    const v0, 0x7f020144

    goto/16 :goto_0

    .line 191
    :pswitch_27
    const v0, 0x7f020145

    goto/16 :goto_0

    .line 193
    :pswitch_28
    const v0, 0x7f02013d

    goto/16 :goto_0

    .line 195
    :pswitch_29
    const v0, 0x7f020136

    goto/16 :goto_0

    .line 197
    :pswitch_2a
    const v0, 0x7f02013b

    goto/16 :goto_0

    .line 199
    :pswitch_2b
    const v0, 0x7f020137

    goto/16 :goto_0

    .line 201
    :pswitch_2c
    const v0, 0x7f020130

    goto/16 :goto_0

    .line 203
    :pswitch_2d
    const v0, 0x7f020141

    goto/16 :goto_0

    .line 205
    :pswitch_2e
    const v0, 0x7f020133

    goto/16 :goto_0

    .line 207
    :pswitch_2f
    const v0, 0x7f020148

    goto/16 :goto_0

    .line 209
    :pswitch_30
    const v0, 0x7f02013f

    goto/16 :goto_0

    .line 212
    :pswitch_31
    const v0, 0x7f02013e

    goto/16 :goto_0

    .line 214
    :pswitch_32
    const v0, 0x7f020138

    goto/16 :goto_0

    .line 216
    :pswitch_33
    const v0, 0x7f020132

    goto/16 :goto_0

    .line 218
    :pswitch_34
    const v0, 0x7f020140

    goto/16 :goto_0

    .line 223
    :pswitch_35
    const v0, 0x7f02012e

    goto/16 :goto_0

    .line 225
    :pswitch_36
    const v0, 0x7f02013a

    goto/16 :goto_0

    .line 227
    :pswitch_37
    const v0, 0x7f020146

    goto/16 :goto_0

    .line 229
    :pswitch_38
    const v0, 0x7f020139

    goto/16 :goto_0

    .line 231
    :pswitch_39
    const v0, 0x7f020131

    goto/16 :goto_0

    .line 233
    :pswitch_3a
    const v0, 0x7f020142

    goto/16 :goto_0

    .line 235
    :pswitch_3b
    const v0, 0x7f020135

    goto/16 :goto_0

    .line 237
    :pswitch_3c
    const v0, 0x7f020147

    goto/16 :goto_0

    .line 239
    :pswitch_3d
    const v0, 0x7f020134

    goto/16 :goto_0

    .line 244
    :pswitch_3e
    const v0, 0x7f02012f

    goto/16 :goto_0

    :pswitch_3f
    move v0, v2

    .line 246
    goto/16 :goto_0

    :pswitch_40
    move v0, v3

    .line 248
    goto/16 :goto_0

    :pswitch_41
    move v0, v4

    .line 250
    goto/16 :goto_0

    .line 252
    :pswitch_42
    const v0, 0x7f0200f9

    goto/16 :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
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
        :pswitch_7
        :pswitch_1f
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_14
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_13
        :pswitch_f
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_13
        :pswitch_13
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
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
        :pswitch_29
        :pswitch_41
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_36
        :pswitch_3d
        :pswitch_3f
        :pswitch_40
        :pswitch_42
        :pswitch_35
        :pswitch_31
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method public static getWeatherSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs5:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs5:Landroid/content/SharedPreferences;

    .line 333
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WeatherDate"

    const/4 v1, 0x0

    .line 334
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWeatherState(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "weatherState":[Ljava/lang/String;
    aget-object v1, v0, p1

    return-object v1
.end method

.method public static getWeatherTypeIndex(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "weatherState":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 90
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isExistWeatherApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weatherpackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, "packageinfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 463
    :goto_0
    if-nez v1, :cond_0

    .line 464
    const/4 v2, 0x1

    .line 466
    :cond_0
    return v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPhoneTimeNight()Z
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 472
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    .line 473
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 472
    :goto_0
    return v1

    .line 473
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setWeatherView(Landroid/content/Context;Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;I)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "weatherviewcontainer"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;
    .param p2, "dayinterval"    # I

    .prologue
    .line 349
    const-string v15, "WeatherUtils"

    const-string v16, "setWeatherView"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 451
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "preferences_pop_window_weather"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 357
    .local v7, "isEnableWeather":Z
    invoke-static/range {p0 .. p0}, Lcn/nubia/calendar/util/WeatherUtils;->getWeatherSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 358
    .local v11, "pref":Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const-string v15, "city"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "city":Ljava/lang/String;
    const-string v15, "dayType"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "dayType":Ljava/lang/String;
    const-string v15, "nightType"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 362
    .local v10, "nightType":Ljava/lang/String;
    const-string v15, "dayTemp"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "dayTemp":Ljava/lang/String;
    const-string v15, "nightTemp"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 364
    .local v9, "nightTemp":Ljava/lang/String;
    const-string v15, "currentType"

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "currentType":Ljava/lang/String;
    const/4 v14, 0x0

    .line 366
    .local v14, "weatherdateLength":I
    invoke-static {v2, v5, v10, v4, v9}, Lcn/nubia/calendar/util/WeatherUtils;->weatherDateIsEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 367
    .local v13, "weatherDateFlag":Z
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 368
    const-string v15, ","

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v14, v15

    .line 370
    :cond_1
    if-ltz p2, :cond_2

    const/4 v15, 0x4

    move/from16 v0, p2

    if-gt v0, v15, :cond_2

    if-eqz v7, :cond_2

    const-string v15, "cn.nubia.weather"

    .line 371
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcn/nubia/calendar/util/WeatherUtils;->isExistWeatherApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    move/from16 v0, p2

    if-gt v14, v0, :cond_3

    if-nez v13, :cond_3

    .line 373
    :cond_2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 375
    :cond_3
    if-eqz v13, :cond_4

    .line 376
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->noDate:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->noDate:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0193

    .line 378
    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 377
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->city:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->icon:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->tmp:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->type:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 385
    :cond_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->noDate:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->city:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->icon:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->tmp:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->type:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    const/4 v12, 0x0

    .line 391
    .local v12, "type":I
    if-lez p2, :cond_8

    .line 393
    :try_start_0
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 394
    const-string v15, ","

    .line 395
    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 404
    :cond_5
    :goto_1
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x1

    :goto_2
    sput-boolean v15, Lcn/nubia/calendar/util/WeatherUtils;->isDay:Z

    .line 417
    :goto_3
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->type:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcn/nubia/calendar/util/WeatherUtils;->getWeatherState(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->icon:Landroid/widget/ImageView;

    invoke-static {v12}, Lcn/nubia/calendar/util/WeatherUtils;->getWeatherIcon(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->city:Landroid/widget/TextView;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 422
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->tmp:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0c0166

    .line 423
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    .line 424
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, p2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\u00b0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 422
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :goto_4
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->mainView:Landroid/view/View;

    new-instance v16, Lcn/nubia/calendar/util/WeatherUtils$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/WeatherUtils$1;-><init>(Landroid/content/Context;)V

    .line 431
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 396
    :cond_6
    :try_start_1
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 397
    const-string v15, ","

    .line 398
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    goto/16 :goto_1

    .line 400
    :catch_0
    move-exception v6

    .line 401
    .local v6, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 402
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 404
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 406
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    const-string v15, "--"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 407
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 413
    :cond_9
    :goto_5
    const-string v15, "isNight"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 414
    .local v8, "isNight":Z
    if-nez v8, :cond_c

    const/4 v15, 0x1

    :goto_6
    sput-boolean v15, Lcn/nubia/calendar/util/WeatherUtils;->isDay:Z

    goto/16 :goto_3

    .line 408
    .end local v8    # "isNight":Z
    :cond_a
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_b

    .line 409
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_5

    .line 410
    :cond_b
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 411
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto :goto_5

    .line 414
    .restart local v8    # "isNight":Z
    :cond_c
    const/4 v15, 0x0

    goto :goto_6

    .line 426
    .end local v8    # "isNight":Z
    :cond_d
    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll$WeatherViewContainer;->tmp:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ","

    .line 427
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, p2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\u00b0/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    .line 428
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, p2

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\u00b0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 427
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private static weatherDateIsEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "city"    # Ljava/lang/String;
    .param p1, "dayType"    # Ljava/lang/String;
    .param p2, "nightType"    # Ljava/lang/String;
    .param p3, "dayTemp"    # Ljava/lang/String;
    .param p4, "nightTemp"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x1

    .line 343
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
