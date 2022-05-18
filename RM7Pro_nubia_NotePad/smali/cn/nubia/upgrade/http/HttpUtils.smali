.class public Lcn/nubia/upgrade/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final SERVER_BUSY:Ljava/lang/String; = "server_busy"

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v8, 0x0

    .line 28
    .local v8, "httpContent":Ljava/lang/String;
    const/4 v13, 0x0

    .line 30
    .local v13, "url":Ljava/net/URL;
    const/4 v7, 0x0

    .line 33
    .local v7, "httpClient":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v13    # "url":Ljava/net/URL;
    .local v14, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 36
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 37
    const-string v15, "POST"

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 39
    const/16 v15, 0x1388

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 40
    const/16 v15, 0x1388

    invoke-virtual {v7, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 42
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v4, "dataOs":Ljava/io/DataOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 48
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 49
    .local v10, "responseCode":I
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HttpResponseCode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v15, 0xc8

    if-ne v10, v15, :cond_5

    .line 51
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 52
    .local v9, "iStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v3, "bs":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v11, "str":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    .local v2, "bReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "temp":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 58
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v15, "\n"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 90
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "dataOs":Ljava/io/DataOutputStream;
    .end local v9    # "iStream":Ljava/io/InputStream;
    .end local v10    # "responseCode":I
    .end local v11    # "str":Ljava/lang/StringBuilder;
    .end local v12    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v13, v14

    .line 93
    .end local v14    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/net/MalformedURLException;
    .restart local v13    # "url":Ljava/net/URL;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 94
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getVersion error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  check whether you network traffic is normal?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v15

    :goto_2
    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    throw v15

    .line 62
    .end local v13    # "url":Ljava/net/URL;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "bs":Ljava/io/BufferedInputStream;
    .restart local v4    # "dataOs":Ljava/io/DataOutputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    .restart local v10    # "responseCode":I
    .restart local v11    # "str":Ljava/lang/StringBuilder;
    .restart local v12    # "temp":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_1
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 86
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "bs":Ljava/io/BufferedInputStream;
    .end local v9    # "iStream":Ljava/io/InputStream;
    .end local v11    # "str":Ljava/lang/StringBuilder;
    .end local v12    # "temp":Ljava/lang/String;
    :cond_2
    :goto_3
    const/16 v15, 0xc8

    if-eq v10, v15, :cond_3

    .line 87
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getVersion error response code is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    :cond_3
    if-eqz v7, :cond_4

    .line 108
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 111
    :cond_4
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpContent:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v8, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 114
    const-string v15, "server_busy"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 115
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v15, v8, v0, v1}, Lcn/nubia/upgrade/util/CommonUtils;->decodeResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "decodeResult":Ljava/lang/String;
    :goto_4
    return-object v5

    .line 65
    .end local v5    # "decodeResult":Ljava/lang/String;
    :cond_5
    const/16 v15, 0x258

    if-ne v10, v15, :cond_7

    .line 67
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    .line 68
    .restart local v9    # "iStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .restart local v3    # "bs":Ljava/io/BufferedInputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .restart local v11    # "str":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "temp":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 74
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v15, "\n"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 98
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "dataOs":Ljava/io/DataOutputStream;
    .end local v9    # "iStream":Ljava/io/InputStream;
    .end local v10    # "responseCode":I
    .end local v11    # "str":Ljava/lang/StringBuilder;
    .end local v12    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v13, v14

    .line 100
    .end local v14    # "url":Ljava/net/URL;
    .local v6, "e":Ljava/io/IOException;
    .restart local v13    # "url":Ljava/net/URL;
    :goto_6
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getVersion error "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  network is not available?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v2    # "bReader":Ljava/io/BufferedReader;
    .restart local v3    # "bs":Ljava/io/BufferedInputStream;
    .restart local v4    # "dataOs":Ljava/io/DataOutputStream;
    .restart local v9    # "iStream":Ljava/io/InputStream;
    .restart local v10    # "responseCode":I
    .restart local v11    # "str":Ljava/lang/StringBuilder;
    .restart local v12    # "temp":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_6
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 79
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 80
    const-string v15, "HttpUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "encrypt 600 Error!!!:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 107
    .end local v2    # "bReader":Ljava/io/BufferedReader;
    .end local v3    # "bs":Ljava/io/BufferedInputStream;
    .end local v4    # "dataOs":Ljava/io/DataOutputStream;
    .end local v9    # "iStream":Ljava/io/InputStream;
    .end local v10    # "responseCode":I
    .end local v11    # "str":Ljava/lang/StringBuilder;
    .end local v12    # "temp":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto/16 :goto_2

    .line 82
    .end local v13    # "url":Ljava/net/URL;
    .restart local v4    # "dataOs":Ljava/io/DataOutputStream;
    .restart local v10    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_7
    const/16 v15, 0x257

    if-ne v10, v15, :cond_2

    .line 83
    const-string v8, "server_busy"
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 118
    :cond_8
    move-object v5, v8

    .restart local v5    # "decodeResult":Ljava/lang/String;
    goto/16 :goto_4

    .line 121
    .end local v5    # "decodeResult":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    .restart local v5    # "decodeResult":Ljava/lang/String;
    goto/16 :goto_4

    .line 98
    .end local v4    # "dataOs":Ljava/io/DataOutputStream;
    .end local v5    # "decodeResult":Ljava/lang/String;
    .end local v10    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_2
    move-exception v6

    goto :goto_6

    .line 90
    :catch_3
    move-exception v6

    goto/16 :goto_1
.end method
