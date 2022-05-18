.class public abstract Lcn/nubia/weather/task/WeatherTask;
.super Ljava/lang/Object;
.source "WeatherTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/task/WeatherTask$TaskListener;
    }
.end annotation


# static fields
.field public static final KEY_RESULT_AREAID:Ljava/lang/String; = "KEY_MAP_AREAID"

.field public static final KEY_RESULT_OPERATION_TYPE:Ljava/lang/String; = "KEY_MAP_OPERATION_TYPE"

.field public static final KEY_RESULT_TYPE:Ljava/lang/String; = "KEY_MAP_TYPE"

.field private static final NUBIA_APPID:Ljava/lang/String; = "25erg6qw45v322d2"

.field private static final NUBIA_APPID_6:Ljava/lang/String; = "25erg6"

.field protected static final NUBIA_SERVER_BASE_URL:Ljava/lang/String; = "http://weather.nubia.cn/api/"

.field private static final NWS_APPID:Ljava/lang/String; = "99f4dbef106d441d"

.field private static final NWS_APPID_6:Ljava/lang/String; = "99f4db"

.field protected static final NWS_GEO_URL:Ljava/lang/String; = "http://geo.weathercn.com/ag9/?"

.field protected static final NWS_SERVER_BASE_URL:Ljava/lang/String; = "http://webapi.weather.com.cn/data/?"

.field protected static final REQUEST_TYPE_AIR_QUALITY:Ljava/lang/String; = "airquality"

.field protected static final REQUEST_TYPE_ALERTS:Ljava/lang/String; = "alerts"

.field protected static final REQUEST_TYPE_CURRENT_CONDITION:Ljava/lang/String; = "currentconditions"

.field protected static final REQUEST_TYPE_DAILY_FORECAST:Ljava/lang/String; = "daily_forecasts"

.field protected static final REQUEST_TYPE_HOURLY_FORECAST:Ljava/lang/String; = "hourly_forecasts"

.field protected static final REQUEST_TYPE_INDICES:Ljava/lang/String; = "indices"

.field protected static final REQUEST_TYPE_LOCATIONS:Ljava/lang/String; = "locations"

.field protected static final REQUEST_TYPE_LOCATION_PRESIZE:Ljava/lang/String; = "location_precise"

.field protected static final REQUEST_TYPE_LOCATION_TIMEZONE:Ljava/lang/String; = "location_timezone"

.field private static final TAG:Ljava/lang/String; = "WeatherTask"

.field public static final TYPE_GEO:Ljava/lang/String; = "TYPE_GEO"

.field public static final TYPE_NUBIA_SERVER:Ljava/lang/String; = "TYPE_NUBIA_SERVER"

.field public static final TYPE_NWS_SERVER:Ljava/lang/String; = "TYPE_NWS_SERVER"


# instance fields
.field protected mAreaID:Ljava/lang/String;

.field protected mListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

.field protected mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

.field protected mParentId:Ljava/lang/String;

.field protected mServerType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mAreaID:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mParentId:Ljava/lang/String;

    .line 61
    const-string v0, "TYPE_NWS_SERVER"

    iput-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    .line 62
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 231
    return-void
.end method


# virtual methods
.method public executeRequest(Lokhttp3/RequestBody;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 10
    .param p1, "body"    # Lokhttp3/RequestBody;
    .param p2, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, "client":Lokhttp3/OkHttpClient;
    :try_start_0
    new-instance v6, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v6}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v8, 0x8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    const-wide/16 v8, 0x8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 191
    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    const-wide/16 v8, 0x8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 192
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 194
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getRequestURL()Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "url":Ljava/lang/String;
    const-string v6, "WeatherTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request URL is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, v5}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 200
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 201
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    .line 203
    .local v4, "response":Lokhttp3/Response;
    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {v4}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getResultInfo()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p2, v6, v4}, Lcn/nubia/weather/task/WeatherTask$TaskListener;->doSuccess(Ljava/util/Map;Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 218
    :cond_2
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 219
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 221
    :cond_3
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 223
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Cache;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 229
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 207
    .restart local v0    # "builder":Lokhttp3/Request$Builder;
    .restart local v3    # "request":Lokhttp3/Request;
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getResultInfo()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p2, v6, v4}, Lcn/nubia/weather/task/WeatherTask$TaskListener;->doFail(Ljava/util/Map;Lokhttp3/Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 210
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "WeatherTask"

    const-string v7, "Execute Weather Task Exception "

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getResultInfo()Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p2, v6, v7}, Lcn/nubia/weather/task/WeatherTask$TaskListener;->doException(Ljava/util/Map;Lokhttp3/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 216
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 218
    :cond_6
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 219
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 221
    :cond_7
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 223
    :try_start_4
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Cache;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 224
    :catch_1
    move-exception v2

    .line 225
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "builder":Lokhttp3/Request$Builder;
    .restart local v3    # "request":Lokhttp3/Request;
    .restart local v4    # "response":Lokhttp3/Response;
    .restart local v5    # "url":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v0    # "builder":Lokhttp3/Request$Builder;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "response":Lokhttp3/Response;
    .end local v5    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 216
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 218
    :cond_8
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 219
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ConnectionPool;->evictAll()V

    .line 221
    :cond_9
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 223
    :try_start_5
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Cache;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 226
    :cond_a
    :goto_2
    throw v6

    .line 224
    :catch_3
    move-exception v2

    .line 225
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected getAPPID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_GEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NWS_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    const-string v0, "99f4db"

    .line 132
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NUBIA_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    const-string v0, "25erg6"

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "99f4db"

    goto :goto_0
.end method

.method protected getAccessKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "requestDate"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "5265f58f029e4257a8bf94295e164957\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RTMk1H2zf0mMvUENcWfgVg=="

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/EncodeUtils;->getEncodedHmacMd5Str(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getDateString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 87
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_GEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "nubiya_webapi_data"

    .line 159
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v0, "TYPE_NWS_SERVER"

    const-string v1, "TYPE_NUBIA_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    const-string v0, "nubia_weather_api"

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "TYPE_NWS_SERVER"

    const-string v1, "TYPE_NWS_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string v0, "nubiya_webapi_data"

    goto :goto_0

    .line 159
    :cond_2
    const-string v0, "nubiya_webapi_data"

    goto :goto_0
.end method

.method protected getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/weather/utils/EncodeUtils;->standardURLEncoder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyAPPID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_GEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NWS_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    const-string v0, "99f4dbef106d441d"

    .line 141
    :goto_0
    return-object v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NUBIA_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "25erg6qw45v322d2"

    goto :goto_0

    .line 141
    :cond_2
    const-string v0, "99f4dbef106d441d"

    goto :goto_0
.end method

.method protected abstract getRequestBody()Lokhttp3/RequestBody;
.end method

.method public abstract getRequestType()Ljava/lang/String;
.end method

.method protected getRequestTypeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 113
    const/4 v1, 0x0

    .line 115
    .local v1, "typeStr":Ljava/lang/String;
    :try_start_0
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "typeStrs":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 117
    const/4 v3, 0x1

    aget-object v1, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "typeStrs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    const-string v3, "WeatherTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRequestTypeStr e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getRequestURL()Ljava/lang/String;
.end method

.method public abstract getResultInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getServerBaseURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "requestType"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "serverBaseUrl":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    return-object v0
.end method

.method protected getServerURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "typeGeo"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_GEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "http://geo.weathercn.com/ag9/?"

    .line 170
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NUBIA_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "http://weather.nubia.cn/api/"

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mServerType:Ljava/lang/String;

    const-string v1, "TYPE_NWS_SERVER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string v0, "http://webapi.weather.com.cn/data/?"

    goto :goto_0

    .line 170
    :cond_2
    const-string v0, "http://webapi.weather.com.cn/data/?"

    goto :goto_0
.end method

.method public getmParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/weather/task/WeatherTask;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcn/nubia/weather/task/WeatherTask;->getRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/task/WeatherTask;->mListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/task/WeatherTask;->executeRequest(Lokhttp3/RequestBody;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 75
    return-void
.end method

.method public setmParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentId"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/weather/task/WeatherTask;->mParentId:Ljava/lang/String;

    .line 83
    return-void
.end method
