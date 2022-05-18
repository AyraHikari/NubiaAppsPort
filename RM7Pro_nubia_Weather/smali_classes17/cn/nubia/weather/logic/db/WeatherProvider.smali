.class public Lcn/nubia/weather/logic/db/WeatherProvider;
.super Landroid/content/ContentProvider;
.source "WeatherProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.weather.logic.db.WeatherProvider"

.field private static final CITYS:I = 0x1

.field public static final CITY_CONTENT_URI:Landroid/net/Uri;

.field private static final CITY_ID:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/city"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/city"

.field private static final HOTCITYS:I = 0x3

.field public static final HOTCITY_CONTENT_URI:Landroid/net/Uri;

.field private static final HOTCITY_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WeatherProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final WEATHERFORECAST:I = 0x5

.field private static final WEATHERFORECAST_ID:I = 0x6

.field public static final WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/City"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    .line 28
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/HotCity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->HOTCITY_CONTENT_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecastv2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 45
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "City"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "City/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "HotCity"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "HotCity/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "WeatherForecastv2"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "WeatherForecastv2/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 250
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 251
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 254
    :cond_0
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 243
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 244
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 257
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p0, p1, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 266
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    return-void
.end method

.method private insertCity(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v6, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v6}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v2, "filteredValues":Landroid/content/ContentValues;
    const-wide/16 v4, -0x1

    .line 143
    .local v4, "rowID":J
    :try_start_0
    const-string v6, "City"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 148
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 149
    const-string v6, "WeatherProvider"

    const-string v7, "couldn\'t insert into city table"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_1
    return-object v3

    .line 144
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method private insertWeatherForecast(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 123
    .local v2, "rowId":J
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v4}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    const-string v4, "WeatherForecastv2"

    const-string v5, "weather_update_time"

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 131
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 132
    const-string v4, "WeatherProvider"

    const-string v5, "couldn\'t insert into forecat table"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v4, 0x0

    .line 135
    :goto_1
    return-object v4

    .line 126
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 273
    const-string v1, "WeatherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " method : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "getCurrentWeather"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "city"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "temp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "WeatherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "windForce"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "windDirection"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "highLowTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "alarmType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "alarmLevel"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "alarmTime"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "timezone"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "isNight"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-boolean v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 291
    :cond_0
    const-string v1, "getCurrentWeatherForCalendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "city"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "dayType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "nightType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "dayTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v1, "nightTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v1, "timezone"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v1, "isNight"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-boolean v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 303
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 66
    iget-object v3, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v3}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 84
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete from URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :pswitch_0
    const-string v3, "WeatherForecastv2"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "count":I
    :goto_0
    return v0

    .line 73
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "forecastSegment":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 80
    :goto_1
    const-string v3, "WeatherForecastv2"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 82
    .restart local v0    # "count":I
    goto :goto_0

    .line 78
    .end local v0    # "count":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 92
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/city"

    .line 96
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/city"

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "resultUri":Landroid/net/Uri;
    sget-object v2, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 107
    .local v0, "match":I
    sparse-switch v0, :sswitch_data_0

    .line 115
    :goto_0
    return-object v1

    .line 109
    :sswitch_0
    invoke-direct {p0, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->insertCity(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    goto :goto_0

    .line 112
    :sswitch_1
    invoke-direct {p0, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->insertWeatherForecast(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    .line 59
    const-string v0, "WeatherProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 159
    .local v0, "qBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 160
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_0
    const-string v1, "City"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 189
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 195
    .local v9, "ret":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 196
    const-string v1, "WeatherProvider"

    const-string v2, "CityProvider.query: failed"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_1
    return-object v9

    .line 165
    .end local v9    # "ret":Landroid/database/Cursor;
    .end local v10    # "sql":Ljava/lang/String;
    :pswitch_1
    const-string v1, "City"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 166
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :pswitch_2
    const-string v1, "HotCity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_3
    const-string v1, "HotCity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 174
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :pswitch_4
    const-string v1, "WeatherForecastv2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_5
    const-string v1, "WeatherForecastv2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 182
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    .restart local v9    # "ret":Landroid/database/Cursor;
    .restart local v10    # "sql":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, -0x1

    .line 207
    .local v0, "count":I
    const-wide/16 v6, 0x0

    .line 208
    .local v6, "rowId":J
    sget-object v8, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 210
    .local v5, "match":I
    :try_start_0
    iget-object v8, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v8}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 211
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v5, :pswitch_data_0

    .line 234
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot update URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 237
    .local v3, "ex":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->printStackTrace()V

    .line 239
    .end local v3    # "ex":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :goto_0
    return v0

    .line 215
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_0
    :try_start_1
    const-string v8, "WeatherForecastv2"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 217
    :catch_1
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 224
    .local v4, "forecastSegment":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v6

    .line 226
    :try_start_3
    const-string v8, "WeatherForecastv2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, p2, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_0

    .line 228
    :catch_2
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
