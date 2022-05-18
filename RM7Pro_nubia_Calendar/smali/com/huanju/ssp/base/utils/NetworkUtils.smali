.class public Lcom/huanju/ssp/base/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field public static final NET_2G:I = 0x4

.field public static final NET_3G:I = 0x5

.field public static final NET_4G:I = 0x6

.field public static final NET_CELL_UNKNOWN:I = 0x3

.field public static final NET_NONE:I = -0x1

.field public static final NET_UNKNOWN:I = 0x0

.field public static final NET_WIFI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEI(I)Ljava/lang/String;
    .locals 7
    .param p0, "time"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 47
    const-string v2, ""

    .line 49
    .local v2, "imei":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 50
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "imei"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 54
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 55
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 59
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez p0, :cond_1

    .line 60
    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIMEI(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    const-string v2, "000000000000000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    imei  :   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 73
    return-object v2

    .line 65
    .restart local v3    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    const-string v5, "000000000000000"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "imei"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "000000000000000"

    goto :goto_0
.end method

.method public static getIpAddress(Z)Ljava/lang/String;
    .locals 7
    .param p0, "isIpv4"    # Z

    .prologue
    .line 336
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 337
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 338
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 339
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 340
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 341
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 342
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 343
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "ip":Ljava/lang/String;
    if-nez p0, :cond_2

    .line 359
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "ip":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 347
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v3    # "inetAddress":Ljava/net/InetAddress;
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "ip":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    goto :goto_0

    .line 356
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 359
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getLksd()I
    .locals 5

    .prologue
    .line 399
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 400
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 401
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 403
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v3

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getSDK_INT()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 257
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getMacInNormal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMacInAndroidM()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "cmd":Ljava/lang/ProcessBuilder;
    const/4 v5, 0x0

    .line 311
    .local v5, "process":Ljava/lang/Process;
    const/4 v6, 0x0

    .line 313
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x2

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "/sys/class/net/wlan0/address"

    aput-object v9, v0, v8

    .line 314
    .local v0, "args":[Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .local v2, "cmd":Ljava/lang/ProcessBuilder;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v5

    .line 316
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 317
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 322
    .local v4, "line":Ljava/lang/String;
    new-array v8, v12, [Ljava/io/Closeable;

    aput-object v7, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 323
    if-eqz v5, :cond_0

    .line 324
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_0
    move-object v6, v7

    .line 327
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v4

    .line 319
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    :catch_0
    move-exception v3

    .line 320
    .local v3, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    new-array v8, v12, [Ljava/io/Closeable;

    aput-object v6, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 323
    if-eqz v5, :cond_1

    .line 324
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 327
    :cond_1
    const-string v4, ""

    goto :goto_0

    .line 322
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    new-array v9, v12, [Ljava/io/Closeable;

    aput-object v6, v9, v11

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 323
    if-eqz v5, :cond_2

    .line 324
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    .line 326
    :cond_2
    throw v8

    .line 322
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_2

    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_2

    .line 319
    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_1

    .end local v1    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .restart local v1    # "cmd":Ljava/lang/ProcessBuilder;
    goto :goto_1
.end method

.method private static getMacInNormal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 293
    const-string v3, ""

    .line 294
    .local v3, "mac":Ljava/lang/String;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    const-string v5, "wifi"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 298
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 299
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 304
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v3

    .line 300
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMobileNetClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    .line 247
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 233
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 243
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 245
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    .locals 10
    .param p0, "js"    # Lorg/json/JSONStringer;

    .prologue
    .line 453
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 455
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "curPkgName":Ljava/lang/String;
    const-string v6, "cn.nubia.gallerylockscreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 457
    const-string v6, "gallerylockscreen not lcp"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 490
    .end local v0    # "curPkgName":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 461
    .restart local v0    # "curPkgName":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Lcom/huanju/ssp/base/utils/SystemUtils;->hasSimCard(Landroid/telephony/TelephonyManager;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 462
    const-string v6, "\u6ca1\u6709sim\u5361"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 479
    .end local v0    # "curPkgName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "curPkgName":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v4

    .line 467
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 468
    if-nez v4, :cond_2

    .line 469
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 482
    .end local v0    # "curPkgName":Ljava/lang/String;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 488
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curPkgName":Ljava/lang/String;
    .restart local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 473
    .local v3, "info1":Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 474
    const-string v7, "cid"

    invoke-virtual {p0, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 475
    const-string v7, "bsss"

    invoke-virtual {p0, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x71

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 476
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    goto :goto_2

    .line 478
    .end local v3    # "info1":Landroid/telephony/NeighboringCellInfo;
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 485
    .end local v0    # "curPkgName":Ljava/lang/String;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 486
    .local v2, "e1":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getNetType()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 95
    .local v0, "cwjManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 97
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 128
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 100
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 101
    .local v2, "netType":I
    if-ne v2, v4, :cond_2

    move v3, v4

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    const/4 v3, 0x4

    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v3, 0x3

    goto :goto_0

    .line 122
    :pswitch_2
    const/4 v3, 0x2

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetWorkID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 369
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 370
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 371
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 373
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v3

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "nl"

    goto :goto_0
.end method

.method public static getNetworkType()I
    .locals 5

    .prologue
    .line 167
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 168
    .local v0, "cwjManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 170
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    :cond_0
    const/4 v3, -0x1

    .line 180
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 173
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 174
    .local v2, "netType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 175
    const/4 v3, 0x2

    goto :goto_0

    .line 176
    :cond_2
    if-nez v2, :cond_3

    .line 177
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getMobileNetClass(I)I

    move-result v3

    goto :goto_0

    .line 180
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "netType":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getOneParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 494
    const-string v6, ""

    .line 496
    .local v6, "retValue":Ljava/lang/String;
    :try_start_0
    const-string v0, "utf-8"

    .line 498
    .local v0, "charset":Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 499
    const/16 v8, 0x3f

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "contents":Ljava/lang/String;
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "keyValues":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v5

    if-ge v3, v8, :cond_2

    .line 502
    aget-object v8, v5, v3

    const/4 v9, 0x0

    aget-object v10, v5, v3

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "key":Ljava/lang/String;
    aget-object v8, v5, v3

    aget-object v9, v5, v3

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 505
    if-nez v7, :cond_0

    const-string v8, ""

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_1

    .line 506
    :cond_0
    move-object v6, v7

    .line 501
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 511
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "contents":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyValues":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 512
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v6
.end method

.method public static getRssi()I
    .locals 5

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 415
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 416
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 418
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return v3

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 384
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 385
    .local v2, "wifi_service":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 386
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 388
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-object v3

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "nl"

    goto :goto_0
.end method

.method public static getWifiMacAddress()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 265
    :try_start_0
    const-string v2, "wlan0"

    .line 266
    .local v2, "interfaceName":Ljava/lang/String;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 267
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 268
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    const/4 v7, 0x0

    new-array v5, v7, [B

    .line 272
    .local v5, "mac":[B
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    .line 273
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 275
    :cond_1
    if-nez v5, :cond_2

    .line 276
    const-string v6, ""

    .line 289
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "mac":[B
    :goto_0
    return-object v6

    .line 278
    .restart local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "mac":[B
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_3

    aget-byte v0, v5, v6

    .line 280
    .local v0, "aMac":B
    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 282
    .end local v0    # "aMac":B
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 283
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 285
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 287
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "mac":[B
    :catch_0
    move-exception v6

    .line 289
    :cond_5
    const-string v6, ""

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 138
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 142
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 146
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRequstByMobile(I)Z
    .locals 1
    .param p0, "requestType"    # I

    .prologue
    .line 184
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRequstByMobile(ILandroid/content/Context;)Z

    move-result v0

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRequstByMobile(ILandroid/content/Context;)Z
    .locals 7
    .param p0, "requestType"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---request checkNet isRequstByMobile requestType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 199
    if-ne p0, v4, :cond_3

    .line 200
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, "cwjManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 203
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    :cond_0
    const-string v4, "---request checkNet isRequstByMobile no net:"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 216
    .end local v0    # "cwjManager":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return v3

    .line 207
    .restart local v0    # "cwjManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 208
    .local v2, "netType":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---request checkNet isRequstByMobile netType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 209
    if-eqz v2, :cond_1

    move v3, v4

    .line 212
    goto :goto_0

    .end local v0    # "cwjManager":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "netType":I
    :cond_3
    move v3, v4

    .line 216
    goto :goto_0
.end method

.method public static isRoaming()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 429
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 430
    .local v2, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 431
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 434
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    const/4 v3, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
