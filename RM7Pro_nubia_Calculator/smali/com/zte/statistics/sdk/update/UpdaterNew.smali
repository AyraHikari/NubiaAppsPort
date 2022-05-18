.class public Lcom/zte/statistics/sdk/update/UpdaterNew;
.super Ljava/lang/Object;
.source "UpdaterNew.java"


# static fields
.field private static final DOWNLOAD_SOURCE:Ljava/lang/String; = "&from="

.field private static final FIELD_ZTE_AutoUpdate_Url:Ljava/lang/String; = "ZTE_AutoUpdate_Url"

.field private static final FIELD_hasUpdate:Ljava/lang/String; = "hasUpdate"

.field private static final FIELD_size:Ljava/lang/String; = "size"

.field private static final FIELD_summary:Ljava/lang/String; = "summary"

.field private static final FIELD_versionCode:Ljava/lang/String; = "versionCode"

.field private static final FIELD_versionName:Ljava/lang/String; = "versionName"

.field private static final HOST_url:Ljava/lang/String; = "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

.field private static final IMEI:Ljava/lang/String; = "&imei="


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private generateNewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&from="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&imei="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/zte/statistics/sdk/GlobalInfo;->did:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRequestStr()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance p0, Lcom/zte/statistics/sdk/update/ZTEJSONObject;

    invoke-direct {p0}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;-><init>()V

    .line 89
    sget-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->msg:Ljava/lang/String;

    sget-object v1, Lcom/zte/statistics/sdk/GlobalInfo;->versionName:Ljava/lang/String;

    sget-object v2, Lcom/zte/statistics/sdk/GlobalInfo;->versionCode:Ljava/lang/String;

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 89
    invoke-virtual {p0, v0, v1, v2}, Lcom/zte/statistics/sdk/update/ZTEJSONObject;->parseAppDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRespondStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 46
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://cloud.ztedevices.com:10003/zteappupgrade/multiupdate"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 48
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 50
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-type"

    const-string v3, "application/json"

    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    .line 52
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 54
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 57
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 60
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 66
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    .line 72
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object p1, v0

    :cond_4
    :goto_4
    return-object p1

    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_5
    if-eqz v0, :cond_5

    .line 72
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 79
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p0
.end method

.method private parseRespondStr(Ljava/lang/String;)Lcom/zte/statistics/sdk/update/UpdateApkInfo;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v2, Lcom/zte/statistics/sdk/update/UpdateApkInfo;

    invoke-direct {v2}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;-><init>()V

    .line 104
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "hasUpdate"

    .line 105
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setHasUpdate(Z)V

    const-string v3, "versionName"

    .line 106
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setVersionName(Ljava/lang/String;)V

    const-string v3, "versionCode"

    .line 107
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setVersionCode(Ljava/lang/String;)V

    const-string v3, "ZTE_AutoUpdate_Url"

    .line 108
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/zte/statistics/sdk/update/UpdaterNew;->generateNewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setUrl(Ljava/lang/String;)V

    const-string p0, "size"

    .line 109
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setSize(J)V

    const-string p0, "summary"

    .line 110
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/zte/statistics/sdk/update/UpdateApkInfo;->setFeature(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getUpdateApkInfo()Lcom/zte/statistics/sdk/update/UpdateApkInfo;
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/zte/statistics/sdk/update/UpdaterNew;->getRequestStr()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/statistics/sdk/update/UpdaterNew;->getRespondStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/statistics/sdk/update/UpdaterNew;->parseRespondStr(Ljava/lang/String;)Lcom/zte/statistics/sdk/update/UpdateApkInfo;

    move-result-object p0

    return-object p0
.end method
