.class public Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;
.super Ljava/lang/Object;
.source "HttpRequestSportsMatches.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "383634"

.field private static final APPKEY:Ljava/lang/String; = "498470a86cf94e81bbe25623a62eac57"

.field private static final APP_TOKEN_KEY:Ljava/lang/String; = "GjNj8bc4jYqo9NRkQdfdaMtnW650Nkb"

.field public static final HASSPORTSMATCH:Ljava/lang/String; = "sports_SPORTSMATCH_status"

.field public static final HASWORLDCUPID:Ljava/lang/String; = "sports_worldcup_status"

.field private static final SECRET_KEY:Ljava/lang/String; = "a663ba28ce704ec99d81698747adec4e"

.field private static final SWITCH_SPORTS:Z = true

.field private static final URL_SPORTSSERVER_SWITCH:Ljava/lang/String; = "https://config-api.nubia.com/rom/match/get_cards.do"

.field public static final WORLDCUPID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getRequestData(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/net/URLConnection;

    .prologue
    .line 44
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getConnectResult(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addCommonParam(Ljava/util/Map;Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    .local v5, "time":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/GetPhoneInfo;->getAPKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "softVersion":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/GetPhoneInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "imei":Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 360
    .local v0, "deviceModel":Ljava/lang/String;
    const-string v6, "imei"

    invoke-interface {p0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v6, "device_model"

    invoke-interface {p0, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v6, "phone_soft_version"

    invoke-interface {p0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v6, "time"

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v6, "GjNj8bc4jYqo9NRkQdfdaMtnW650Nkb"

    invoke-static {p0, v6}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "sign":Ljava/lang/String;
    const-string v6, "sign"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "deviceModel":Ljava/lang/String;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "sign":Ljava/lang/String;
    .end local v4    # "softVersion":Ljava/lang/String;
    .end local v5    # "time":Ljava/lang/String;
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static applyData(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "valueTitle"    # Ljava/lang/String;

    .prologue
    .line 419
    :try_start_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getConnectResult(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 8
    .param p0, "conn"    # Ljava/net/URLConnection;

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, "finalInputStream":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 318
    .local v4, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v3, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .end local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    .local v3, "finalInputStream":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v5, "res":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 322
    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 325
    .end local v0    # "ch":I
    .end local v5    # "res":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 326
    .end local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    sget-object v6, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    if-eqz v2, :cond_0

    .line 330
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 335
    :cond_0
    :goto_2
    const-string v6, ""

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v6

    .line 324
    .end local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v0    # "ch":I
    .restart local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "res":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 329
    if-eqz v3, :cond_2

    .line 330
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    move-object v2, v3

    .line 324
    .end local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 328
    .end local v0    # "ch":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "res":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    .line 329
    :goto_5
    if-eqz v2, :cond_3

    .line 330
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 334
    :cond_3
    :goto_6
    throw v6

    .line 332
    .end local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v0    # "ch":I
    .restart local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "res":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v7

    goto :goto_4

    .end local v0    # "ch":I
    .end local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "res":Ljava/lang/StringBuilder;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_6

    .line 328
    .end local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "finalInputStream":Ljava/io/InputStreamReader;
    .restart local v2    # "finalInputStream":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 325
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static getRequestData(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->addCommonParam(Ljava/util/Map;Landroid/content/Context;)V

    .line 340
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 343
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getUTF8Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 349
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "finalUrl":Ljava/lang/String;
    return-object v1

    .line 346
    .end local v1    # "finalUrl":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getSWITCH_SPORTS()Z
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerSwitch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;

    invoke-direct {v1, p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 311
    return-void
.end method

.method private static getSign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "tokenKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 375
    .local v6, "keys":[Ljava/lang/String;
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 377
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v9, "paramBuffer":Ljava/lang/StringBuffer;
    array-length v14, v6

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v5, v6, v13

    .line 379
    .local v5, "key":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 381
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "param":Ljava/lang/String;
    const/4 v7, 0x0

    .line 386
    .local v7, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 387
    const-string v12, "UTF-8"

    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    :goto_1
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 394
    .local v1, "b":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 395
    .local v3, "hexValue":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v12, v1

    if-ge v4, v12, :cond_2

    .line 396
    aget-byte v12, v1, v4

    and-int/lit16 v11, v12, 0xff

    .line 397
    .local v11, "val":I
    const/16 v12, 0x10

    if-ge v11, v12, :cond_1

    .line 398
    const-string v12, "0"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 388
    .end local v1    # "b":[B
    .end local v3    # "hexValue":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v11    # "val":I
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 390
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 391
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 401
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "b":[B
    .restart local v3    # "hexValue":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 402
    .local v10, "sign":Ljava/lang/String;
    return-object v10
.end method

.method public static getSwitchInfo(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSWITCH_SPORTS()Z

    move-result v2

    .line 155
    .local v2, "ownerSwitch":Z
    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v4

    .line 159
    :cond_1
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "preferences_pop_window_sportsevents"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    .local v3, "settingSwitch":Z
    if-eqz v3, :cond_0

    .line 165
    const-string v6, "sports_SPORTSMATCH_status"

    invoke-static {p0, v6}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getSportsMatchBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 166
    .local v1, "hasSportsMatch":Z
    if-eqz v1, :cond_0

    .line 171
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    .line 172
    .local v0, "firstLauncher":Z
    if-nez v0, :cond_0

    move v4, v5

    .line 176
    goto :goto_0
.end method

.method private static getUTF8Code(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 408
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 412
    :goto_0
    return-object v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static initNucmsSDK(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/GetPhoneInfo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "IMEI":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    :cond_0
    const-string v0, "00000000000000"

    .line 86
    :cond_1
    invoke-static {}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->build()Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    .line 87
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/GetPhoneInfo;->getAPKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setApkVersion(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    const-string v4, "383634"

    .line 88
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setAppid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    .line 89
    invoke-virtual {v3, p0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setContext(Landroid/content/Context;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 90
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setEnableLog(Z)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 91
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setJsonParser(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setReyunid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    const-string v4, "a663ba28ce704ec99d81698747adec4e"

    .line 93
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setSecretKey(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 94
    invoke-virtual {v3, v4}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->setReleaseEnvir(Z)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->create()Lcom/nubia/nucms/bean/NuCmsParamSdkInit;

    move-result-object v1

    .line 97
    .local v1, "bean":Lcom/nubia/nucms/bean/NuCmsParamSdkInit;
    :try_start_0
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk;->getInstance()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nubia/nucms/api/NuCmsSdk;->init(Lcom/nubia/nucms/bean/NuCmsParamSdkInit;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requerstSportsMatchesData(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    :try_start_0
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "timeZoneID":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$1;

    invoke-direct {v4, p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$1;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3, v1, v4}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "timeZoneID":Ljava/lang/String;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requerstSportsMatchesDataApplication(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 184
    :try_start_0
    new-instance v4, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    const-string v5, "sportsMatchesVersion"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "sportsMatchesVersion":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    .local v3, "version":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "timeZoneID":Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v5, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;

    invoke-direct {v5, p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$2;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v3, v2, v5}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "sportsMatchesVersion":Ljava/lang/String;
    .end local v2    # "timeZoneID":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :goto_1
    return-void

    .restart local v1    # "sportsMatchesVersion":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    .line 185
    goto :goto_0

    .line 218
    .end local v1    # "sportsMatchesVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nubia/nucms/api/NuCmsModelCallback",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "callback":Lcom/nubia/nucms/api/NuCmsModelCallback;, "Lcom/nubia/nucms/api/NuCmsModelCallback<Lcom/nubia/nucms/bean/NuCmsSportsBean;>;"
    :try_start_0
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk;->getInstance()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/nubia/nucms/api/NuCmsSdk;->requestSportsMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/nucms/api/NuCmsModelCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
