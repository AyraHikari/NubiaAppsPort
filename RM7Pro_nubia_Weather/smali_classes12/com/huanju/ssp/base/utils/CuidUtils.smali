.class public final Lcom/huanju/ssp/base/utils/CuidUtils;
.super Ljava/lang/Object;
.source "CuidUtils.java"


# static fields
.field private static final AES_KEY:Ljava/lang/String; = "stub@2014y03m11d"

.field private static final CUID:Ljava/lang/String; = "hj_cuid_cache"

.field private static final EXT_FILE:Ljava/lang/String; = "huanju/.cuid"

.field private static final KEY_SYSTEM_SETTINGS_CUID:Ljava/lang/String; = "com.huanju.stub.cuid.20140311.v1"

.field private static cuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCuid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 75
    const-string v4, "**** createCuid ****"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 78
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIMEI(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "tmDeviceId":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "androidId":Ljava/lang/String;
    const-string v1, ""

    .line 86
    .local v1, "cuid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "uuid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CUID-generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 95
    const-string v4, "com.huanju.stub.cuid.20140311.v1"

    invoke-static {v4, v1}, Lcom/huanju/ssp/base/utils/CuidUtils;->writeSystemSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/CuidUtils;->setExternalCuid(Ljava/lang/String;)V

    .line 101
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/CuidUtils;->setToSp(Ljava/lang/String;)V

    .line 105
    .end local v3    # "uuid":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getFromSp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    .line 42
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuidFromSdcard()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    .line 46
    :cond_1
    sget-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuidFromSetting()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    .line 50
    :cond_2
    sget-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->createCuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    .line 54
    :cond_3
    sget-object v0, Lcom/huanju/ssp/base/utils/CuidUtils;->cuid:Ljava/lang/String;

    return-object v0
.end method

.method private static getCuidFromSdcard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getExternalCuid()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "cuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<< Get CUID from ext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 116
    const-string v1, "com.huanju.stub.cuid.20140311.v1"

    invoke-static {v1, v0}, Lcom/huanju/ssp/base/utils/CuidUtils;->writeSystemSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-object v0
.end method

.method private static getCuidFromSetting()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    const-string v1, ""

    .line 125
    .local v1, "cuid":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.huanju.stub.cuid.20140311.v1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< Try to get CUID from sys : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.System.getString or putString failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getExternalCuid()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 142
    const-string v2, ""

    .line 143
    .local v2, "cuid":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "huanju/.cuid"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .local v7, "extFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 147
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v11, "UTF-8"

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v6, "encodeStrBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 150
    .local v8, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 151
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 161
    .end local v6    # "encodeStrBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 162
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v9, "No sdcard backup found!"

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    new-array v9, v13, [Ljava/io/Closeable;

    aput-object v0, v9, v12

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 171
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v2

    .line 154
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "encodeStrBuilder":Ljava/lang/StringBuilder;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "encodeStr":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 157
    new-instance v3, Ljava/lang/String;

    const-string v9, "stub@2014y03m11d"

    const-string v10, "stub@2014y03m11d"

    const-string v11, "UTF-8"

    .line 158
    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v11}, Lcom/huanju/ssp/base/utils/Base64;->decode([B)[B

    move-result-object v11

    .line 157
    invoke-static {v9, v10, v11}, Lcom/huanju/ssp/base/utils/KeyUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v3, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "cuid":Ljava/lang/String;
    .local v3, "cuid":Ljava/lang/String;
    move-object v2, v3

    .line 168
    .end local v3    # "cuid":Ljava/lang/String;
    .restart local v2    # "cuid":Ljava/lang/String;
    :cond_1
    new-array v9, v13, [Ljava/io/Closeable;

    aput-object v1, v9, v12

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 169
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 163
    .end local v5    # "encodeStr":Ljava/lang/String;
    .end local v6    # "encodeStrBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 164
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read sdcard backup fail!\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    new-array v9, v13, [Ljava/io/Closeable;

    aput-object v0, v9, v12

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_2

    .line 165
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decode sdcard backup fail!\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    new-array v9, v13, [Ljava/io/Closeable;

    aput-object v0, v9, v12

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    new-array v10, v13, [Ljava/io/Closeable;

    aput-object v0, v10, v12

    invoke-static {v10}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 169
    throw v9

    .line 168
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 165
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 163
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 161
    :catch_5
    move-exception v4

    goto/16 :goto_1
.end method

.method private static getFromSp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hj_cuid_cache"

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "hj_cuid_cache"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setExternalCuid(Ljava/lang/String;)V
    .locals 11
    .param p0, "cuid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "dirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 190
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/FileUtils;->createDirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 204
    new-array v5, v10, [Ljava/io/Closeable;

    aput-object v0, v5, v9

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 193
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "huanju/.cuid"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    const-string v5, "stub@2014y03m11d"

    const-string v6, "stub@2014y03m11d"

    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/huanju/ssp/base/utils/KeyUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lcom/huanju/ssp/base/utils/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "encoded":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>> Write encoded \uff1a\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 198
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    new-array v5, v10, [Ljava/io/Closeable;

    aput-object v1, v5, v9

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 205
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 199
    .end local v4    # "encoded":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write sdcard backup fail!\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    new-array v5, v10, [Ljava/io/Closeable;

    aput-object v0, v5, v9

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 201
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encode sdcard backup fail!\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    new-array v5, v10, [Ljava/io/Closeable;

    aput-object v0, v5, v9

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    new-array v6, v10, [Ljava/io/Closeable;

    aput-object v0, v6, v9

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 205
    throw v5

    .line 204
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 201
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 199
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method private static setToSp(Ljava/lang/String;)V
    .locals 5
    .param p0, "cuid"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "hj_cuid_cache"

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "hj_cuid_cache"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method private static writeSystemSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    .local v0, "context":Landroid/content/Context;
    const-string v2, "android.permission.WRITE_SETTINGS"

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/utils/CuidUtils;->isPermissionAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.System.getString or putString failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
