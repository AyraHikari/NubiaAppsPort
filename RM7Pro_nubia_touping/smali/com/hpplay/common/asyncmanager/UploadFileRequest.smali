.class public Lcom/hpplay/common/asyncmanager/UploadFileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field private mHeadParameter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalPath:[Ljava/lang/String;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/asyncmanager/HttpMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hpplay/common/asyncmanager/HttpMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "UploadFileRequest"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->TAG:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mLocalPath:[Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mURL:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mHeadParameter:Ljava/util/Map;

    .line 36
    iput-object p4, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 38
    return-void
.end method


# virtual methods
.method public uploadFile()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 41
    const-string v6, "\r\n"

    .line 42
    const-string v8, "--"

    .line 43
    const-string v9, "*****"

    .line 49
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 55
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 64
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

    invoke-virtual {v1}, Lcom/hpplay/common/asyncmanager/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    :cond_0
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "multipart/form-data;boundary="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mHeadParameter:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mHeadParameter:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 76
    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mHeadParameter:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    move-object v5, v4

    move-object v3, v4

    .line 129
    :goto_1
    :try_start_1
    const-string v6, "UploadFileRequest"

    invoke-static {v6, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 131
    if-eqz v5, :cond_1

    .line 133
    :try_start_2
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 138
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 140
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 145
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 147
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 152
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 154
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 160
    :cond_4
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    .line 82
    :cond_5
    :try_start_6
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v1, v5

    .line 83
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mLocalPath:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 84
    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->mLocalPath:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 85
    const-string v5, "//"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    if-lez v1, :cond_6

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: form-data; name=\"file"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\";filename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 91
    :cond_6
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 92
    const/16 v2, 0x400

    .line 93
    new-array v2, v2, [B

    .line 95
    :goto_8
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 96
    const/4 v11, 0x0

    invoke-virtual {v7, v2, v11, v10}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_8

    .line 128
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v4

    move-object v5, v7

    move-object v3, v4

    goto/16 :goto_1

    .line 98
    :cond_7
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 104
    :cond_8
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 105
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 106
    const/16 v1, 0x12c

    if-lt v5, v1, :cond_13

    .line 108
    const-string v1, "UploadFileRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP Request is not success, Response code is "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 110
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 111
    const-string v3, "code"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v3, "msg"

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v2, v1

    .line 116
    :goto_9
    const/16 v1, 0xc8

    if-ne v5, v1, :cond_12

    .line 117
    :try_start_9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v6

    .line 118
    :try_start_a
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 119
    :try_start_b
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 121
    :try_start_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_13
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 122
    :goto_a
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_a

    .line 128
    :catch_2
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v3, v6

    move-object v5, v7

    goto/16 :goto_1

    :cond_9
    move-object v2, v3

    move-object v4, v5

    move-object v3, v6

    .line 127
    :goto_b
    :try_start_e
    const-string v0, "UploadFileRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resultBuffer ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 131
    if-eqz v7, :cond_a

    .line 133
    :try_start_f
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 138
    :cond_a
    :goto_c
    if-eqz v2, :cond_b

    .line 140
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    .line 145
    :cond_b
    :goto_d
    if-eqz v4, :cond_c

    .line 147
    :try_start_11
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 152
    :cond_c
    :goto_e
    if-eqz v3, :cond_d

    .line 154
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 160
    :cond_d
    :goto_f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 134
    :catch_3
    move-exception v0

    .line 135
    const-string v5, "UploadFileRequest"

    invoke-static {v5, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_c

    .line 141
    :catch_4
    move-exception v0

    .line 142
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_d

    .line 148
    :catch_5
    move-exception v0

    .line 149
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_e

    .line 155
    :catch_6
    move-exception v0

    .line 156
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_f

    .line 134
    :catch_7
    move-exception v0

    .line 135
    const-string v5, "UploadFileRequest"

    invoke-static {v5, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_2

    .line 141
    :catch_8
    move-exception v0

    .line 142
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_3

    .line 148
    :catch_9
    move-exception v0

    .line 149
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_4

    .line 155
    :catch_a
    move-exception v0

    .line 156
    const-string v2, "UploadFileRequest"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_5

    .line 131
    :catchall_0
    move-exception v0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    :goto_10
    if-eqz v7, :cond_e

    .line 133
    :try_start_13
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    .line 138
    :cond_e
    :goto_11
    if-eqz v4, :cond_f

    .line 140
    :try_start_14
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .line 145
    :cond_f
    :goto_12
    if-eqz v5, :cond_10

    .line 147
    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    .line 152
    :cond_10
    :goto_13
    if-eqz v6, :cond_11

    .line 154
    :try_start_16
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    .line 160
    :cond_11
    :goto_14
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 134
    :catch_b
    move-exception v0

    .line 135
    const-string v1, "UploadFileRequest"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_11

    .line 141
    :catch_c
    move-exception v0

    .line 142
    const-string v1, "UploadFileRequest"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_12

    .line 148
    :catch_d
    move-exception v0

    .line 149
    const-string v1, "UploadFileRequest"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_13

    .line 155
    :catch_e
    move-exception v0

    .line 156
    const-string v1, "UploadFileRequest"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_14

    .line 131
    :catchall_1
    move-exception v0

    move-object v5, v4

    move-object v6, v4

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v5, v4

    move-object v6, v4

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v5, v4

    move-object v6, v4

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v5, v4

    goto :goto_10

    :catchall_5
    move-exception v0

    move-object v3, v2

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_10

    :catchall_8
    move-exception v0

    move-object v5, v4

    move-object v6, v3

    move-object v3, v1

    move-object v4, v2

    goto :goto_10

    :catchall_9
    move-exception v0

    move-object v6, v3

    move-object v7, v5

    move-object v5, v4

    move-object v3, v1

    move-object v4, v2

    goto :goto_10

    .line 128
    :catch_f
    move-exception v0

    move-object v2, v4

    move-object v3, v4

    move-object v5, v7

    goto/16 :goto_1

    :catch_10
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    move-object v5, v7

    move-object v2, v4

    goto/16 :goto_1

    :catch_11
    move-exception v0

    move-object v1, v2

    move-object v3, v6

    move-object v5, v7

    move-object v2, v4

    goto/16 :goto_1

    :catch_12
    move-exception v0

    move-object v1, v2

    move-object v3, v6

    move-object v2, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_1

    :catch_13
    move-exception v0

    move-object v1, v2

    move-object v4, v5

    move-object v2, v3

    move-object v5, v7

    move-object v3, v6

    goto/16 :goto_1

    :catch_14
    move-exception v0

    move-object v5, v7

    goto/16 :goto_1

    :cond_12
    move-object v1, v2

    move-object v3, v4

    move-object v2, v4

    goto/16 :goto_b

    :cond_13
    move-object v2, v3

    goto/16 :goto_9
.end method
