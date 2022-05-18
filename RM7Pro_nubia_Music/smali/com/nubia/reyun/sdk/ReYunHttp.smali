.class public Lcom/nubia/reyun/sdk/ReYunHttp;
.super Ljava/lang/Object;
.source "ReYunHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 30
    :try_start_0
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    const-string v1, "========== Request Begin =========="

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Request url:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 39
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 40
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    sget-object v1, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Request data:\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 65
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 68
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 71
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 73
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_b

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 77
    if-nez v6, :cond_5

    .line 81
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v2, "code"

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 84
    if-nez v2, :cond_8

    .line 85
    invoke-interface {p3, v1, v6}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onSuccess(ILorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 133
    :goto_1
    if-eqz v3, :cond_1

    .line 135
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 141
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v0, v4

    .line 145
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 147
    add-int/lit8 v0, p4, -0x1

    .line 146
    invoke-static {p0, p1, p2, p3, v0}, Lcom/nubia/reyun/sdk/ReYunHttp;->postJson(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;I)V

    .line 149
    :cond_4
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    const-string v1, "********** Request End **********"

    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 79
    :cond_5
    :try_start_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 94
    :goto_4
    const/16 v3, 0x40

    :try_start_5
    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 97
    :cond_6
    if-nez p4, :cond_e

    .line 98
    const-string v3, "response Code=-2"

    invoke-interface {p3, v0, v3}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v0, v4

    .line 133
    :goto_5
    if-eqz v2, :cond_7

    .line 135
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 141
    :cond_7
    :goto_6
    if-eqz v1, :cond_3

    .line 142
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 87
    :cond_8
    :try_start_7
    new-instance v1, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Request nubia server failed! response Code="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 103
    :goto_7
    const/16 v1, 0x40

    :try_start_8
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 104
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 106
    :cond_9
    const-string v1, "response Code=-2"

    invoke-interface {p3, v0, v1}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 133
    if-eqz v3, :cond_a

    .line 135
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 141
    :cond_a
    :goto_8
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    goto :goto_3

    .line 91
    :cond_b
    :try_start_a
    new-instance v2, Ljava/lang/Exception;

    const-string v6, "Request http server failed!"

    invoke-direct {v2, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response Code="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_1

    .line 107
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 108
    :goto_9
    const/16 v1, 0x40

    :try_start_b
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    :cond_c
    const-string v1, "response Code=-3"

    invoke-interface {p3, v0, v1}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 133
    if-eqz v3, :cond_d

    .line 135
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 141
    :cond_d
    :goto_a
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    goto/16 :goto_3

    :cond_e
    move v0, v5

    .line 100
    goto/16 :goto_5

    .line 136
    :catch_3
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 136
    :catch_4
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 136
    :catch_5
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 122
    :catch_6
    move-exception v0

    move-object v3, v2

    .line 123
    :goto_b
    const/16 v1, 0x40

    :try_start_d
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 126
    :cond_f
    const-string v1, "response Code=-6"

    invoke-interface {p3, v0, v1}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 133
    if-eqz v3, :cond_10

    .line 135
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 141
    :cond_10
    :goto_c
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    goto/16 :goto_3

    .line 136
    :catch_7
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 127
    :catch_8
    move-exception v0

    move-object v3, v2

    .line 128
    :goto_d
    const/16 v1, 0x40

    :try_start_f
    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :cond_11
    const-string v1, "response Code=-7"

    invoke-interface {p3, v0, v1}, Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 133
    if-eqz v3, :cond_12

    .line 135
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 141
    :cond_12
    :goto_e
    if-eqz v2, :cond_2

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v4

    goto/16 :goto_3

    .line 136
    :catch_9
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 132
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 133
    :goto_f
    if-eqz v3, :cond_13

    .line 135
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 141
    :cond_13
    :goto_10
    if-eqz v2, :cond_14

    .line 142
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 144
    :cond_14
    throw v0

    .line 136
    :catch_a
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 136
    :catch_b
    move-exception v1

    .line 138
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 132
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_f

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_f

    .line 127
    :catch_c
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_d

    :catch_d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_d

    .line 122
    :catch_e
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    :catch_f
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_b

    .line 107
    :catch_10
    move-exception v0

    move-object v3, v2

    goto/16 :goto_9

    :catch_11
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_9

    .line 102
    :catch_12
    move-exception v0

    move-object v3, v2

    goto/16 :goto_7

    :catch_13
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_7

    .line 93
    :catch_14
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :catch_15
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_4
.end method
