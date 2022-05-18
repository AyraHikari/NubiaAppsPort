.class public Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;
.super Ljava/lang/Object;
.source "ZTEStatisticsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;
    }
.end annotation


# static fields
.field private static final ENDPOINT_BASE:Ljava/lang/String;

.field private static final ENDPOINT_SDK_CONFIG:Ljava/lang/String;


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_SDK_CONFIG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->mCtx:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private getAesStr(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string p0, "5719j98ECnwr37V3"

    const-string v0, "84qIhog8bk47026T"

    .line 167
    invoke-static {p1, p0, v0}, Lcom/zte/statistics/sdk/comm/AesUtils;->encryptToByte(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAliveVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.zte.aliveupdate"

    .line 176
    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 177
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->versionName:Ljava/lang/String;

    .line 178
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method private needPostBySelf()Z
    .locals 2

    .line 276
    sget-object p0, Lcom/zte/statistics/sdk/GlobalInfo;->did:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "did =null not send data to server!"

    const/4 v0, 0x0

    .line 277
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private postHttpJSON(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-direct {p0, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAesStr(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    .line 192
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postHttpJSON buf length="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance p2, Ljava/net/URL;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v2, "POST"

    .line 196
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 197
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 198
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 199
    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 200
    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 201
    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version-Code"

    const-string v3, "00506"

    .line 202
    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 205
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 208
    :try_start_2
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    :try_start_3
    array-length v0, p0

    invoke-virtual {v3, p0, v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 211
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_1

    .line 214
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p2, :cond_2

    .line 223
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return p0

    :goto_2
    if-eqz v0, :cond_3

    .line 214
    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    move-object v0, p2

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v0, p2

    goto :goto_3

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 220
    :goto_3
    :try_start_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error posting JSON: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p2}, Lcom/zte/statistics/sdk/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return p1

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p0
.end method

.method private postHttpReq(Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_SDK_CONFIG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    .line 338
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 339
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 340
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    .line 342
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Version-Code"

    const-string v2, "00506"

    .line 343
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 344
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 345
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 346
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 349
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAesStr(Ljava/lang/String;)[B

    move-result-object p0

    .line 350
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 v1, 0x0

    .line 353
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 354
    :try_start_1
    array-length v1, p0

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 356
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 362
    :cond_0
    :goto_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 363
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 365
    :goto_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 368
    :cond_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 369
    new-instance p0, Lcom/zte/statistics/sdk/obj/ResponseObj;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/ResponseObj;-><init>()V

    .line 370
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setCode(I)V

    .line 371
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setMsg(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setBody(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    .line 359
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw p0
.end method

.method private postHttpsJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .line 77
    invoke-direct {p0, p3}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAesStr(Ljava/lang/String;)[B

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postHttpsJSON buf length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/comm/SendProxy;->getMyBinder()Lcom/zte/zms/INetProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 83
    invoke-direct {p0, p1, p3}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsJSONBySelf(Landroid/content/Context;[B)I

    move-result p0

    return p0

    .line 85
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsJSONByProxy(Landroid/content/Context;Ljava/lang/String;[BZ)I

    move-result p0

    return p0
.end method

.method private postHttpsJSONByProxy(Landroid/content/Context;Ljava/lang/String;[BZ)I
    .locals 15

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postHttpsJSONByProxy_wifiPri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " appid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v14, -0x1

    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postHttpsJSON buf length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    array-length v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v2, "application/json"

    .line 147
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept"

    const-string v2, "application/json"

    .line 148
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Version-Code"

    const-string v2, "00506"

    .line 149
    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appid"

    .line 150
    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 153
    invoke-static/range {p1 .. p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v2

    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->ns:Ljava/lang/String;

    sget-object v4, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    sget-object v5, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    const-string v7, "POST"

    const-string v10, ""

    move/from16 v6, p4

    move-object/from16 v9, p3

    move-object/from16 v11, p2

    invoke-virtual/range {v2 .. v12}, Lcom/zte/statistics/sdk/comm/SendProxy;->asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return v14

    :cond_0
    const/16 v0, 0xc8

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v14

    .line 161
    :goto_0
    throw v0
.end method

.method private postHttpsJSONBySelf(Landroid/content/Context;[B)I
    .locals 6

    .line 90
    invoke-direct {p0}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->needPostBySelf()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAliveVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postHttpsJSONBySelf_aliver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " appid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "TLS"

    .line 96
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/4 v5, 0x0

    .line 97
    invoke-virtual {v2, v5, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 100
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 101
    new-instance v2, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;

    invoke-direct {v2, p0, v5}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$1;)V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 102
    new-instance p0, Ljava/net/URL;

    sget-object v2, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_BASE:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x7530

    .line 103
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v2, 0x2bf20

    .line 104
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v2, "POST"

    .line 105
    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 106
    invoke-virtual {p0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept"

    const-string v3, "application/json"

    .line 107
    invoke-virtual {p0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Encoding"

    const-string v3, "gzip"

    .line 108
    invoke-virtual {p0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Version-Code"

    const-string v3, "00506"

    .line 109
    invoke-virtual {p0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    .line 110
    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/zte/statistics/sdk/comm/ConstantDefine;->ALI_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 115
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 116
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 117
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 119
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    array-length p1, p2

    invoke-virtual {v2, p2, v0, p1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v5, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v5, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 125
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_1

    .line 128
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https-server-getResponseCode="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p2, v2}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return p1

    :goto_2
    if-eqz v5, :cond_2

    .line 128
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private postHttpsReq(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAesStr(Ljava/lang/String;)[B

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/comm/SendProxy;->getMyBinder()Lcom/zte/zms/INetProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsReqBySelf(Landroid/content/Context;[B)Lcom/zte/statistics/sdk/obj/ResponseObj;

    move-result-object p0

    return-object p0

    .line 252
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsReqByProxy(Landroid/content/Context;[B)Lcom/zte/statistics/sdk/obj/ResponseObj;

    move-result-object p0

    return-object p0
.end method

.method private postHttpsReqByProxy(Landroid/content/Context;[B)Lcom/zte/statistics/sdk/obj/ResponseObj;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "postHttpsReqByProxy"

    const/4 v0, 0x0

    .line 256
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string p0, "Content-Type"

    const-string v0, "application/json"

    .line 259
    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Accept"

    const-string v0, "application/json"

    .line 260
    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Version-Code"

    const-string v0, "00506"

    .line 261
    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appid"

    .line 262
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-interface {v5, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p1}, Lcom/zte/statistics/sdk/comm/SendProxy;->getInstance(Landroid/content/Context;)Lcom/zte/statistics/sdk/comm/SendProxy;

    move-result-object v1

    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    sget-object v3, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_SDK_CONFIG:Ljava/lang/String;

    const-string v4, "POST"

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zte/statistics/sdk/comm/SendProxy;->syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;

    move-result-object p0

    const-string p1, "result"

    .line 264
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "statusCode"

    .line 268
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 269
    new-instance p2, Lcom/zte/statistics/sdk/obj/ResponseObj;

    invoke-direct {p2}, Lcom/zte/statistics/sdk/obj/ResponseObj;-><init>()V

    .line 270
    invoke-virtual {p2, p1}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setCode(I)V

    const-string p1, "respCnt"

    .line 271
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 272
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setBody(Ljava/lang/String;)V

    return-object p2
.end method

.method private postHttpsReqBySelf(Landroid/content/Context;[B)Lcom/zte/statistics/sdk/obj/ResponseObj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->needPostBySelf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getAliveVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postHttpsReqBySelf_aliver = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "TLS"

    .line 290
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->getTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 291
    invoke-virtual {v0, v1, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 295
    new-instance v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;

    invoke-direct {v0, p0, v1}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$MyHostnameVerifier;-><init>(Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient$1;)V

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 296
    new-instance p0, Ljava/net/URL;

    sget-object v0, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->ENDPOINT_SDK_CONFIG:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "POST"

    .line 297
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v3, "application/json"

    .line 298
    invoke-virtual {p0, v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v3, "application/json"

    .line 299
    invoke-virtual {p0, v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    const-string v3, "gzip"

    .line 300
    invoke-virtual {p0, v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version-Code"

    const-string v3, "00506"

    .line 301
    invoke-virtual {p0, v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appid"

    .line 302
    sget-object v3, Lcom/zte/statistics/sdk/GlobalInfo;->appid:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->ALI_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 306
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 307
    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 308
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 309
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 312
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    array-length p1, p2

    invoke-virtual {v0, p2, v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 315
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 321
    :cond_1
    :goto_1
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 322
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 327
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 328
    new-instance p1, Lcom/zte/statistics/sdk/obj/ResponseObj;

    invoke-direct {p1}, Lcom/zte/statistics/sdk/obj/ResponseObj;-><init>()V

    .line 329
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setCode(I)V

    .line 330
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setMsg(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zte/statistics/sdk/obj/ResponseObj;->setBody(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object p1

    :goto_3
    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    throw p0
.end method


# virtual methods
.method public getTrustManager()[Ljavax/net/ssl/TrustManager;
    .locals 2

    const/4 p0, 0x0

    .line 67
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 69
    move-object v1, p0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 70
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public postJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2

    .line 54
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0

    .line 58
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpJSON(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public sendRequest(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpsReq(Landroid/content/Context;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    invoke-direct {p0, p2}, Lcom/zte/statistics/sdk/comm/ZTEStatisticsClient;->postHttpReq(Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ResponseObj;

    move-result-object p0

    return-object p0
.end method
