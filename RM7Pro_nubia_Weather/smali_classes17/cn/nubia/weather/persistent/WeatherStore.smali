.class public Lcn/nubia/weather/persistent/WeatherStore;
.super Ljava/lang/Object;
.source "WeatherStore.java"

# interfaces
.implements Lcn/nubia/weather/persistent/IPersistenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;
    }
.end annotation


# static fields
.field private static final KEY_QUERY_ALLCITY:Ljava/lang/String; = "KEY_QUERY_ALLCITY"

.field private static final KEY_QUERY_ALLWEATHER:Ljava/lang/String; = "KEY_QUERY_ALLWEATHER"

.field private static final KEY_QUERY_HOTCITY:Ljava/lang/String; = "KEY_QUERY_HOTCITY"

.field private static final KEY_QUERY_WEATHER_BY_ID:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "WeatherStore"

.field private static mInstance:Lcn/nubia/weather/persistent/WeatherStore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

.field private mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "KEY_QUERY_WEATHER_BY_ID"

    sput-object v0, Lcn/nubia/weather/persistent/WeatherStore;->KEY_QUERY_WEATHER_BY_ID:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    iput-object p1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must init WeatherStore in Main Thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;-><init>(Lcn/nubia/weather/persistent/WeatherStore;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    .line 49
    :cond_1
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcn/nubia/weather/persistent/WeatherStore;->KEY_QUERY_WEATHER_BY_ID:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const-class v1, Lcn/nubia/weather/persistent/WeatherStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/persistent/WeatherStore;->mInstance:Lcn/nubia/weather/persistent/WeatherStore;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcn/nubia/weather/persistent/WeatherStore;

    invoke-direct {v0, p0}, Lcn/nubia/weather/persistent/WeatherStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/persistent/WeatherStore;->mInstance:Lcn/nubia/weather/persistent/WeatherStore;

    .line 136
    :cond_0
    sget-object v0, Lcn/nubia/weather/persistent/WeatherStore;->mInstance:Lcn/nubia/weather/persistent/WeatherStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private increaseIndex()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method private initContentValues(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 311
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "area_id"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v2, "is_location"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v2, "all_data"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "parent_city_id"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "timezone_id"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "infoCount":I
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "alarm_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Lcn/nubia/weather/model/AlarmModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 325
    const-string v2, "aqi_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lcn/nubia/weather/model/AQIModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 330
    const-string v2, "city_name"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 333
    const-string v2, "forecast5d_json"

    .line 334
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_3
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 338
    const-string v2, "hourfc_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Lcn/nubia/weather/model/HourfcModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 343
    const-string v2, "index_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Lcn/nubia/weather/model/IndexModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    add-int/lit8 v0, v0, 0x1

    .line 347
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 348
    const-string v2, "pastday_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v3

    .line 349
    invoke-virtual {v3}, Lcn/nubia/weather/model/PastDayModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 352
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 353
    const-string v2, "observe_json"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_7
    const-string v2, "update_time"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    return-object v1
.end method

.method private initContentValuesForNubia(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "area_id"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v1, "is_location"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v1, "all_data"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcn/nubia/weather/model/NubiaServerModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/jsonbean/BaseJsonBean;->getmJsonStr()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "update_time"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    const-string v1, "parent_city_id"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-object v0
.end method


# virtual methods
.method public addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 6
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 238
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v0

    .line 239
    .local v0, "token":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcn/nubia/weather/persistent/WeatherStore;->initContentValues(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;

    move-result-object v1

    .line 240
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v3, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 242
    return-void
.end method

.method public addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;I)V
    .locals 0
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "index"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 153
    return-void
.end method

.method public changeIndex(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 297
    return-void
.end method

.method public clearManualWeatherInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 175
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 176
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "is_location = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 179
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 176
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public getAllCityIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCitys(Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 9
    .param p1, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    const/4 v4, 0x0

    .line 229
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v8

    .line 230
    .local v8, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-virtual {v0, v8, p1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "KEY_QUERY_ALLCITY"

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public getAllWeatherInfo(Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 9
    .param p1, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    .line 185
    const-string v0, "weatherstore getAllWeatherInfo"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v8

    .line 189
    .local v8, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-virtual {v0, v8, p1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 190
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "KEY_QUERY_ALLWEATHER"

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 195
    return-void

    .line 193
    .end local v8    # "token":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public getHotCitys(Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 9
    .param p1, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v8

    .line 222
    .local v8, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-virtual {v0, v8, p1}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 223
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "KEY_QUERY_HOTCITY"

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->HOTCITY_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public getWeatherInfoByID(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v8

    .line 200
    .local v8, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-virtual {v0, v8, p2}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget-object v2, Lcn/nubia/weather/persistent/WeatherStore;->KEY_QUERY_WEATHER_BY_ID:Ljava/lang/Object;

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "area_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public getWeatherInfoByIDV2(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callback"    # Lcn/nubia/weather/persistent/QueryCallback;

    .prologue
    .line 210
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v8

    .line 211
    .local v8, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    invoke-virtual {v0, v8, p2}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->addCallback(Ljava/lang/Integer;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sget-object v2, Lcn/nubia/weather/persistent/WeatherStore;->KEY_QUERY_WEATHER_BY_ID:Ljava/lang/Object;

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "area_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v7, "is_location DESC "

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public getWeatherModelByID(Ljava/lang/String;)Lcn/nubia/weather/model/WeatherModel;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 370
    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 371
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "area_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "is_location DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 375
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 376
    .local v7, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    move-object v2, v1

    goto :goto_0
.end method

.method public removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 9
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 163
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    move-result-object v6

    .line 164
    .local v6, "token":Ljava/lang/Integer;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "area_id = ? AND is_location = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 168
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setWeatherInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 158
    return-void
.end method

.method public updateLocationWeather(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 9
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v8, 0x1

    .line 284
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 285
    invoke-direct {p0, p1}, Lcn/nubia/weather/persistent/WeatherStore;->initContentValues(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;

    move-result-object v4

    .line 286
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_location = ?"

    new-array v6, v8, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 289
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 286
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public updateWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 9
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 247
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 248
    invoke-direct {p0, p1}, Lcn/nubia/weather/persistent/WeatherStore;->initContentValues(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;

    move-result-object v4

    .line 249
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 250
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "area_id = ? AND is_location = ? AND city_name = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 258
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 259
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 249
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public updateWeatherInfoForNubia(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 9
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 266
    invoke-direct {p0}, Lcn/nubia/weather/persistent/WeatherStore;->increaseIndex()Ljava/lang/Integer;

    .line 267
    invoke-direct {p0, p1}, Lcn/nubia/weather/persistent/WeatherStore;->initContentValuesForNubia(Lcn/nubia/weather/model/WeatherModel;)Landroid/content/ContentValues;

    move-result-object v4

    .line 268
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcn/nubia/weather/persistent/WeatherStore;->mDBHandler:Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;

    iget-object v1, p0, Lcn/nubia/weather/persistent/WeatherStore;->mOperationIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "area_id = ? AND is_location = ? AND city_name = ? "

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 277
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 278
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 268
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/weather/persistent/WeatherStore$WeatherDBHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    return-void
.end method
