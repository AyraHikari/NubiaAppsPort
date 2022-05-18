.class public Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/logic/db/WeatherDatabaseHelper$City;,
        Lcn/nubia/weather/logic/db/WeatherDatabaseHelper$HotCity;,
        Lcn/nubia/weather/logic/db/WeatherDatabaseHelper$WeatherForecast;,
        Lcn/nubia/weather/logic/db/WeatherDatabaseHelper$WeatherForecastV2;,
        Lcn/nubia/weather/logic/db/WeatherDatabaseHelper$Table;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "weathercity.db"

.field public static final DATABASE_VERSION:I = 0x8

.field private static final TAG:Ljava/lang/String; = "WeatherDateBaseHelper"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "weathercity.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 53
    iput-object p1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 42
    const-string v0, "weathercity.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object p1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private clearHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 360
    :try_start_0
    const-string v1, "DELETE FROM HotCity"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private clearWeatherData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "isLocationOpen"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "CITY_ORDER"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    const-string v1, "DELETE FROM WeatherForecastv2"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR when clearWeatherData. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private createCityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 534
    :try_start_0
    const-string v1, "CREATE table IF NOT EXISTS City(_id INTEGER PRIMARY KEY AUTOINCREMENT, province TEXT , city_cn TEXT , city_pinyin TEXT , city_py TEXT , name_cn TEXT , name_pinyin TEXT , name_py TEXT , areaId TEXT  )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private createForecastTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 483
    :try_start_0
    const-string v1, "CREATE table IF NOT EXISTS WeatherForecast(_id INTEGER PRIMARY KEY AUTOINCREMENT, area_id TEXT , name_cn TEXT , name_en TEXT , district_cn TEXT , district_en TEXT , province_cn TEXT , province_en TEXT , nation_cn TEXT , nation_en TEXT , weather_update_time TEXT , release_time TEXT , _order INTEGER , auto_location INTEGER NOT NULL DEFAULT 0, current_temperature TEXT , current_air_quality TEXT , current_weather_type TEXT , day_weather_type TEXT, night_weather_type TEXT , day_temperature TEXT , night_temperature TEXT , day_wind_direction_type TEXT , night_wind_direction_type TEXT , day_wind_force TEXT , night_wind_force TEXT , sunrise_time TEXT , sunset_time TEXT , hourfc_temperature TEXT , hourfc_type TEXT , hourfc_time TEXT , alarm TEXT , alarm_level TEXT , alarm_time TEXT  )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private createForecastTableV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 459
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "createForecastTableV2"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :try_start_0
    const-string v1, "CREATE table IF NOT EXISTS WeatherForecastv2(_id INTEGER PRIMARY KEY AUTOINCREMENT, area_id TEXT , is_location INT , alarm_json TEXT , aqi_json TEXT , city_name TEXT , forecast5d_json TEXT , hourfc_json TEXT , index_json TEXT , pastday_json TEXT, observe_json TEXT, update_time LONG)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private createHotCityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 524
    :try_start_0
    const-string v1, "CREATE table IF NOT EXISTS HotCity(_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT , areaId TEXT  )"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private dropCityTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 405
    :try_start_0
    const-string v1, "DROP TABLE City"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private dropHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 378
    :try_start_0
    const-string v1, "DROP TABLE HotCity"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private dropWeatherData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "isLocationOpen"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "CITY_ORDER"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    const-string v1, "DROP TABLE WeatherForecastv2"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR when dropWeatherData. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private importCityData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 412
    iget-object v11, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f080000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 413
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 415
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v11, "gbk"

    invoke-direct {v4, v2, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 417
    .local v6, "reader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 418
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 419
    .local v0, "count":I
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 420
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "strs":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "province"

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v11, "city_cn"

    const/4 v12, 0x2

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "city_pinyin"

    const/4 v12, 0x3

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v11, "city_py"

    const/4 v12, 0x4

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v11, "name_cn"

    const/4 v12, 0x5

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v11, "name_pinyin"

    const/4 v12, 0x6

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v11, "name_py"

    const/4 v12, 0x7

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v11, "areaId"

    const/16 v12, 0x8

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v11, "City"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 431
    .local v8, "rowID":J
    const-wide/16 v12, -0x1

    cmp-long v11, v8, v12

    if-nez v11, :cond_2

    .line 432
    const-string v11, "WeatherDateBaseHelper"

    const-string v12, "couldn\'t insert into city table"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 438
    .end local v0    # "count":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "rowID":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 439
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v11, "WeatherDateBaseHelper"

    const-string v12, "Exception "

    invoke-static {v11, v12, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    if-eqz v2, :cond_0

    .line 443
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 450
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 456
    :cond_1
    :goto_3
    return-void

    .line 434
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "count":I
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "strs":[Ljava/lang/String;
    .restart local v8    # "rowID":J
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "rowID":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_5
    const-string v11, "WeatherDateBaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert HotCity Successfully, count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 441
    if-eqz v2, :cond_4

    .line 443
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 448
    :cond_4
    :goto_4
    if-eqz v4, :cond_7

    .line 450
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v4

    .line 453
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 444
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 453
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 444
    .end local v0    # "count":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v2, :cond_5

    .line 443
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 448
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 450
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 453
    :cond_6
    :goto_7
    throw v11

    .line 444
    :catch_5
    move-exception v1

    .line 445
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 452
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 441
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 438
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "count":I
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_7
    move-object v3, v4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method private importDataFromV1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 479
    return-void
.end method

.method private importHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 320
    .local v3, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_0
    iget-object v11, p0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 321
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v4, v2, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 323
    .local v6, "reader":Ljava/io/BufferedReader;
    const-string v5, ""

    .line 324
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 325
    .local v0, "count":I
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 326
    const-string v11, "\\s+"

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "strs":[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "name"

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v11, "areaId"

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v11, "HotCity"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 331
    .local v8, "rowID":J
    const-wide/16 v12, -0x1

    cmp-long v11, v8, v12

    if-nez v11, :cond_2

    .line 332
    const-string v11, "WeatherDateBaseHelper"

    const-string v12, "couldn\'t insert into hotcity table"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 338
    .end local v0    # "count":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "rowID":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 339
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v11, "WeatherDateBaseHelper"

    const-string v12, "Exception "

    invoke-static {v11, v12, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    if-eqz v2, :cond_0

    .line 343
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 348
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 350
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 356
    :cond_1
    :goto_3
    return-void

    .line 334
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "count":I
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "strs":[Ljava/lang/String;
    .restart local v8    # "rowID":J
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v7    # "strs":[Ljava/lang/String;
    .end local v8    # "rowID":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_3
    :try_start_5
    const-string v11, "WeatherDateBaseHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Insert HotCity Successfully, count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 341
    if-eqz v2, :cond_4

    .line 343
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 348
    :cond_4
    :goto_4
    if-eqz v4, :cond_7

    .line 350
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v3, v4

    .line 353
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 344
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 351
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 352
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 353
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 344
    .end local v0    # "count":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 351
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 352
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 341
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v2, :cond_5

    .line 343
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 348
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 350
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 353
    :cond_6
    :goto_7
    throw v11

    .line 344
    :catch_5
    move-exception v1

    .line 345
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 351
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 352
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 341
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 338
    :catch_7
    move-exception v1

    goto :goto_1

    .end local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v0    # "count":I
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_7
    move-object v3, v4

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createForecastTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 150
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->insertForceastInitData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createHotCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    return-void
.end method

.method private initDatabaseFromV5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createHotCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->clearHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createForecastTableV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    return-void
.end method

.method private insertForceastInitData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 157
    :try_start_0
    const-string v1, "INSERT INTO WeatherForecast (area_id, name_cn, name_en, district_cn, district_en, province_cn, province_en, nation_cn, nation_en, weather_update_time, release_time, _order, auto_location, current_temperature, current_air_quality, current_weather_type, day_weather_type, night_weather_type, day_temperature, night_temperature, day_wind_direction_type, night_wind_direction_type, day_wind_force, night_wind_force, sunrise_time, sunset_time, hourfc_temperature, hourfc_type, hourfc_time, alarm, alarm_level, alarm_time) VALUES (\"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", -1, 1, \"--\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\")"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private updateForecastTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 396
    :try_start_0
    const-string v1, "ALTER TABLE WeatherForecast ADD past_weather TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "version"    # I

    .prologue
    .line 102
    const-string v0, "WeatherDateBaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherDateBaseHelper upgradeTo version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    packed-switch p2, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 0"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 1"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV1(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 113
    :pswitch_2
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 2"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 117
    :pswitch_3
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 3"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 121
    :pswitch_4
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 4"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 125
    :pswitch_5
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 5"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 129
    :pswitch_6
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 6"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV6(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 135
    :pswitch_7
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 7"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 141
    :pswitch_8
    const-string v0, "WeatherDateBaseHelper"

    const-string v1, "WeatherDatabaseHelper Upgrade version = 8"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 103
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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private upgradeToV1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 233
    return-void
.end method

.method private upgradeToV2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 238
    return-void
.end method

.method private upgradeToV3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 241
    const-string v0, "WeatherDateBaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherDatabaseHelper Enter upgradeToV3, Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->dropCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 248
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 250
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->clearHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 252
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 254
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->updateForecastTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 255
    const-string v0, "WeatherDateBaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherDatabaseHelper Exit upgradeToV3, Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private upgradeToV4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 259
    const-string v1, "WeatherDateBaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherDatabaseHelper Enter upgradeToV4, Time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_0
    const-string v1, "ALTER TABLE WeatherForecast ADD ray TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const-string v1, "ALTER TABLE WeatherForecast ADD dress TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 265
    const-string v1, "ALTER TABLE WeatherForecast ADD wind TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 267
    const-string v1, "ALTER TABLE WeatherForecast ADD humidity TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 269
    const-string v1, "ALTER TABLE WeatherForecast ADD comfort TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 271
    const-string v1, "ALTER TABLE WeatherForecast ADD sport TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private upgradeToV5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 279
    const-string v0, "WeatherDateBaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherDatabaseHelper Enter upgradeToV5, Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->createForecastTableV2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 281
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importDataFromV1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 282
    return-void
.end method

.method private upgradeToV6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 285
    const-string v1, "WeatherDateBaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherDatabaseHelper Enter upgradeToV6, Time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :try_start_0
    const-string v1, "ALTER TABLE WeatherForecastv2 ADD all_data TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private upgradeToV7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 295
    const-string v1, "WeatherDateBaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherDatabaseHelper Enter upgradeToV7, Time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->clearWeatherData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 298
    :try_start_0
    const-string v1, "ALTER TABLE WeatherForecastv2 ADD parent_city_id TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->clearHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 304
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->importHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 305
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private upgradeToV8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 308
    const-string v1, "WeatherDateBaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherDatabaseHelper Enter upgradeToV8, Time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    const-string v1, "ALTER TABLE WeatherForecastv2 ADD timezone_id TEXT"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WeatherDateBaseHelper"

    const-string v2, "Excute SQL ERROR. "

    invoke-static {v1, v2, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 70
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 93
    const-string v0, "WeatherDateBaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherDateBaseHelper downUpgrade oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->dropCityTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->dropHotCityData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    invoke-direct {p0, p1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->dropWeatherData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 99
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 84
    const-string v1, "WeatherDateBaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WeatherDateBaseHelper onUpgrade oldVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move v0, p2

    .local v0, "version":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 87
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
