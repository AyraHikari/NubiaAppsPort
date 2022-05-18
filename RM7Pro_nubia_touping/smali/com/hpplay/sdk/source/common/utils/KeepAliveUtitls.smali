.class public Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECT_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "KeepAliveUtitls"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->CONNECT_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static httpPostCheckTvState(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/b/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 72
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    :cond_0
    const-string v0, "KeepAliveUtitls"

    const-string v1, "httpPostCheckTvState is empty"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    :goto_0
    return-object p0

    .line 81
    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 82
    const-string v0, "uid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/common/store/Session;->getUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "appid"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/store/Session;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v0, "token"

    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v4

    iget-object v4, v4, Lcom/hpplay/sdk/source/common/store/Session;->token:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/b/b;

    .line 89
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v7, "u"

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 158
    :goto_2
    :try_start_1
    const-string v6, "KeepAliveUtitls"

    invoke-static {v6, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 160
    if-eqz v1, :cond_3

    .line 162
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 168
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 170
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    .line 176
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 178
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 184
    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    .line 186
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    :cond_6
    :goto_6
    move-object p0, v3

    .line 192
    goto :goto_0

    .line 94
    :cond_7
    :try_start_6
    const-string v0, "tvList"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v0, "KeepAliveUtitls"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpPostCheckTvState paramter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 99
    :try_start_7
    sget-wide v4, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->CONNECT_TIMEOUT:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 100
    sget-wide v4, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->CONNECT_TIMEOUT:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 102
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 104
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    const-string v4, "Content-type"

    const-string v5, "text/html"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "Accept-Charset"

    const-string v5, "utf-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v4, "contentType"

    const-string v5, "utf-8"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 110
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v6

    .line 111
    :try_start_8
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 113
    const/16 v2, 0xc8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    if-ne v2, v4, :cond_13

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v5

    .line 115
    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v2, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_14
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 117
    :try_start_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    :goto_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 119
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v7, "\r\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 157
    :catch_1
    move-exception v1

    move-object v2, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v6

    goto/16 :goto_2

    .line 122
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string v7, "KeepAliveUtitls"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpPostCheckTvState result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v7, "200"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 128
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    const-string v2, "data"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    const-string v7, "tvList"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 133
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_8
    if-ge v1, v8, :cond_9

    .line 135
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 136
    const-string v10, "u"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "online"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 139
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v1, "doCheck httpCheck:"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/b/b;

    .line 143
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 144
    if-nez v2, :cond_a

    .line 145
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 147
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/hpplay/sdk/source/browse/b/b;->b(Z)V

    .line 148
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/browse/b/b;->a(Z)V

    .line 149
    const-string v2, "name:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " alive state:"

    .line 150
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/b/b;->h()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_9

    .line 160
    :catchall_0
    move-exception v1

    move-object v3, v4

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_a
    if-eqz v3, :cond_b

    .line 162
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    .line 168
    :cond_b
    :goto_b
    if-eqz v6, :cond_c

    .line 170
    :try_start_c
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    .line 176
    :cond_c
    :goto_c
    if-eqz v5, :cond_d

    .line 178
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 184
    :cond_d
    :goto_d
    if-eqz v1, :cond_e

    .line 186
    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 189
    :cond_e
    :goto_e
    throw v0

    .line 153
    :cond_f
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object p0

    .line 160
    if-eqz v4, :cond_10

    .line 162
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 168
    :cond_10
    :goto_f
    if-eqz v6, :cond_11

    .line 170
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 176
    :cond_11
    :goto_10
    if-eqz v5, :cond_12

    .line 178
    :try_start_12
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 184
    :cond_12
    :goto_11
    if-eqz v0, :cond_1

    .line 186
    :try_start_13
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 163
    :catch_3
    move-exception v1

    .line 164
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 171
    :catch_4
    move-exception v1

    .line 172
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 179
    :catch_5
    move-exception v1

    .line 180
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_13
    move-object v4, v3

    move-object v5, v3

    .line 160
    :cond_14
    if-eqz v4, :cond_15

    .line 162
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    .line 168
    :cond_15
    :goto_12
    if-eqz v6, :cond_16

    .line 170
    :try_start_15
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    .line 176
    :cond_16
    :goto_13
    if-eqz v5, :cond_17

    .line 178
    :try_start_16
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    .line 184
    :cond_17
    :goto_14
    if-eqz v0, :cond_6

    .line 186
    :try_start_17
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_6

    goto/16 :goto_6

    .line 187
    :catch_6
    move-exception v0

    .line 188
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 163
    :catch_7
    move-exception v1

    .line 164
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 171
    :catch_8
    move-exception v1

    .line 172
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 179
    :catch_9
    move-exception v1

    .line 180
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 163
    :catch_a
    move-exception v0

    .line 164
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 171
    :catch_b
    move-exception v0

    .line 172
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 179
    :catch_c
    move-exception v0

    .line 180
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 187
    :catch_d
    move-exception v0

    .line 188
    const-string v1, "KeepAliveUtitls"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 163
    :catch_e
    move-exception v2

    .line 164
    const-string v3, "KeepAliveUtitls"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 171
    :catch_f
    move-exception v2

    .line 172
    const-string v3, "KeepAliveUtitls"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 179
    :catch_10
    move-exception v2

    .line 180
    const-string v3, "KeepAliveUtitls"

    invoke-static {v3, v2}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 187
    :catch_11
    move-exception v1

    .line 188
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 160
    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v6, v3

    move-object v1, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v1

    move-object v5, v3

    move-object v6, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_a

    :catchall_3
    move-exception v1

    move-object v5, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_a

    :catchall_4
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move-object v3, v1

    move-object v6, v4

    move-object v1, v5

    move-object v5, v2

    goto/16 :goto_a

    .line 157
    :catch_12
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_2

    :catch_13
    move-exception v1

    move-object v2, v3

    move-object v4, v6

    move-object v5, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_2

    :catch_14
    move-exception v1

    move-object v2, v5

    move-object v4, v6

    move-object v5, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_2
.end method

.method public static tcpCheckTvState(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v3, 0x0

    .line 43
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 45
    sget-wide v4, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->CONNECT_TIMEOUT:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 46
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    sget-wide v4, Lcom/hpplay/sdk/source/common/utils/KeepAliveUtitls;->CONNECT_TIMEOUT:J

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    if-eqz v2, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 49
    :goto_1
    :try_start_3
    const-string v3, "KeepAliveUtitls"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is offline"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/common/store/Session;->getSocketExceptionsListener()Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;

    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v3, p1, p2, v0}, Lcom/hpplay/sdk/source/api/ISocketExceptionsListener;->onDeviceCheckException(Ljava/lang/String;ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :cond_1
    if-eqz v2, :cond_3

    .line 57
    :try_start_4
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 60
    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    .line 59
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 60
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_2

    .line 57
    :try_start_5
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 60
    :cond_2
    :goto_3
    throw v0

    .line 58
    :catch_3
    move-exception v1

    .line 59
    const-string v2, "KeepAliveUtitls"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 55
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 48
    :catch_4
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method
