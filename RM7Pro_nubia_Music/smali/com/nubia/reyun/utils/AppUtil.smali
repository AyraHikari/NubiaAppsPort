.class public Lcom/nubia/reyun/utils/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    const-string v1, "unKnow"

    .line 682
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 683
    const-string v2, "connectivity"

    .line 682
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 681
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 684
    if-nez v0, :cond_0

    .line 685
    const-string v0, "unKnow"

    .line 766
    :goto_0
    return-object v0

    .line 687
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_3

    .line 689
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 690
    const-string v0, "WIFI"

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 692
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 693
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 696
    :pswitch_1
    const-string v0, "IDEN"

    goto :goto_0

    .line 700
    :pswitch_2
    const-string v0, "RTT"

    goto :goto_0

    .line 704
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 708
    :pswitch_4
    const-string v0, "EDGE"

    goto :goto_0

    .line 712
    :pswitch_5
    const-string v0, "GPRS"

    goto :goto_0

    .line 716
    :pswitch_6
    const-string v0, "EHRPD"

    goto :goto_0

    .line 720
    :pswitch_7
    const-string v0, "EVDO_0"

    goto :goto_0

    .line 724
    :pswitch_8
    const-string v0, "EVDO_A"

    goto :goto_0

    .line 728
    :pswitch_9
    const-string v0, "EVDO_B"

    goto :goto_0

    .line 732
    :pswitch_a
    const-string v0, "HSDPA"

    goto :goto_0

    .line 736
    :pswitch_b
    const-string v0, "HSPAP"

    goto :goto_0

    .line 740
    :pswitch_c
    const-string v0, "HSUPA"

    goto :goto_0

    .line 744
    :pswitch_d
    const-string v0, "UMTS"

    goto :goto_0

    .line 748
    :pswitch_e
    const-string v0, "LTE"

    goto :goto_0

    .line 752
    :pswitch_f
    const-string v0, "unKnow"

    goto :goto_0

    .line 756
    :cond_2
    const-string v0, "unKnow"

    goto :goto_0

    .line 759
    :cond_3
    const-string v0, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_e
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 657
    const-string v1, "unKnow"

    .line 660
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 661
    const-string v2, "phone"

    .line 660
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 659
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 662
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    const-string v0, "unKnow"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :cond_0
    :goto_0
    return-object v0

    .line 666
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 667
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 666
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    invoke-static {p0}, Lcom/nubia/reyun/utils/AppUtil;->getCountrySim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v1, "unKnow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string v0, "unKnow"

    .line 427
    :cond_0
    return-object v0
.end method

.method private static getCountrySim(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    const-string v1, "unKnow"

    .line 437
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 438
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 439
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v0, "unKnow"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :cond_0
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 443
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 442
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getCpu()Ljava/lang/String;
    .locals 5

    .prologue
    .line 350
    const-string v3, "unKnow"

    .line 351
    const/4 v2, 0x0

    .line 353
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 354
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 355
    const-string v2, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 356
    const/4 v2, 0x1

    aget-object v0, v0, v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 365
    :goto_0
    if-eqz v1, :cond_0

    .line 367
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 375
    :cond_0
    :goto_1
    return-object v0

    .line 357
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 358
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v3

    goto :goto_0

    .line 359
    :catch_1
    move-exception v0

    .line 360
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    move-object v0, v3

    goto :goto_0

    .line 361
    :catch_2
    move-exception v0

    .line 362
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    move-object v0, v3

    goto :goto_0

    .line 368
    :catch_3
    move-exception v1

    .line 370
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 361
    :catch_4
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 359
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 357
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public static getDeviceBoard()Ljava/lang/String;
    .locals 5

    .prologue
    .line 383
    const-string v3, "unKnow"

    .line 384
    const/4 v2, 0x0

    .line 386
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 387
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-nez v2, :cond_2

    .line 400
    :goto_0
    if-eqz v1, :cond_1

    .line 402
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 410
    :cond_1
    :goto_1
    return-object v2

    .line 388
    :cond_2
    :try_start_3
    const-string v0, "Hardware"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, ":\\s+"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 390
    const/4 v3, 0x1

    aget-object v2, v0, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 395
    :goto_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 397
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 403
    :catch_2
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 396
    :catch_3
    move-exception v0

    goto :goto_3

    .line 394
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceInternal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 256
    const-string v1, "unKnow"

    .line 258
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 260
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.internal.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unKnow"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 273
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 265
    :catch_2
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 267
    :catch_3
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 269
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDeviceManufature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceManutime()J
    .locals 2

    .prologue
    .line 182
    sget-wide v0, Landroid/os/Build;->TIME:J

    return-wide v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    const-string v0, "unKnow"

    .line 452
    invoke-static {p0}, Lcom/nubia/reyun/utils/AppUtil;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p0}, Lcom/nubia/reyun/utils/AppUtil;->getIpFromWifi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    return-object v0

    .line 455
    :cond_0
    invoke-static {}, Lcom/nubia/reyun/utils/AppUtil;->getIpFromNetworkInterface()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getIpFromNetworkInterface()Ljava/lang/String;
    .locals 5

    .prologue
    .line 524
    const-string v1, "unKnow"

    .line 526
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 541
    :goto_0
    return-object v0

    .line 527
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 528
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 532
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_2

    .line 533
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 537
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static getIpFromWifi(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 494
    const-string v1, "unKnow"

    .line 497
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 498
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 501
    invoke-static {v0}, Lcom/nubia/reyun/utils/AppUtil;->int2Ip(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 503
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 564
    const-string v1, "unKnow"

    .line 566
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    const-string v0, "unKnow"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :cond_0
    :goto_0
    return-object v0

    .line 570
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    .line 571
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 570
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nubia/reyun/utils/AppUtil;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    const-string v0, "unKnow"

    .line 123
    :goto_0
    return-object v0

    .line 119
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    .line 121
    invoke-static {}, Lcom/nubia/reyun/utils/AppUtil;->getMacHighM()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {p0}, Lcom/nubia/reyun/utils/AppUtil;->getMacLowM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMacHighM()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    :try_start_0
    const-string v2, "wlan0"

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    if-nez v2, :cond_0

    .line 86
    const-string v0, "unKnow"

    .line 100
    :goto_0
    return-object v0

    .line 89
    :cond_0
    :try_start_1
    array-length v3, v2

    :goto_1
    if-lt v0, v3, :cond_2

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    :try_start_2
    aget-byte v4, v2, v0

    .line 90
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string v0, "unKnow"

    goto :goto_0
.end method

.method public static getMacLowM(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    const-string v1, "unKnow"

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 138
    const-string v2, "wifi"

    .line 137
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 143
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v0, "unKnow"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_0
    :goto_1
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getNubiaUserExperiencePlan(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 282
    .line 284
    :try_start_0
    const-string v0, "android.provider.Settings$System"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 285
    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 286
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_experience_plan"

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v0

    .line 287
    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    move v2, v0

    .line 301
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 287
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 290
    :catch_1
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 292
    :catch_2
    move-exception v0

    .line 293
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 294
    :catch_3
    move-exception v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 296
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 775
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 776
    const/16 v2, 0x4000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 782
    :goto_0
    return-object v0

    .line 779
    :catch_0
    move-exception v1

    .line 780
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResolution(Landroid/content/Context;)[I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 312
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 315
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 316
    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    aput v2, v1, v7

    .line 318
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aput v0, v1, v8

    .line 336
    :goto_0
    aget v0, v1, v7

    aget v2, v1, v8

    if-le v0, v2, :cond_0

    .line 337
    aget v0, v1, v7

    .line 338
    aget v2, v1, v8

    aput v2, v1, v7

    .line 339
    aput v0, v1, v8

    .line 342
    :cond_0
    return-object v1

    .line 321
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSize"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 322
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 323
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const/4 v0, 0x0

    iget v2, v3, Landroid/graphics/Point;->x:I

    aput v2, v1, v0

    .line 325
    const/4 v0, 0x1

    iget v2, v3, Landroid/graphics/Point;->y:I

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 329
    :catch_1
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 331
    :catch_2
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRomVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    const-string v1, "unKnow"

    .line 233
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 234
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 235
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.rom.internal.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unKnow"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 248
    :goto_0
    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 240
    :catch_2
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 242
    :catch_3
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 244
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getSubAccessType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 582
    const-string v1, "unKnow"

    .line 586
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 587
    const-string v2, "connectivity"

    .line 586
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 585
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 588
    if-nez v0, :cond_0

    .line 589
    const-string v0, "unKnow"

    .line 648
    :goto_0
    return-object v0

    .line 591
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_3

    .line 593
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 594
    const-string v0, "WIFI"

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 596
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 597
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move-object v0, v1

    goto :goto_0

    .line 608
    :pswitch_1
    const-string v0, "2G"

    goto :goto_0

    .line 626
    :pswitch_2
    const-string v0, "3G"

    goto :goto_0

    .line 630
    :pswitch_3
    const-string v0, "4G"

    goto :goto_0

    .line 634
    :pswitch_4
    const-string v0, "unKnow"

    goto :goto_0

    .line 638
    :cond_2
    const-string v0, "unKnow"

    goto :goto_0

    .line 641
    :cond_3
    const-string v0, "unKnow"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getTelNo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    const-string v1, ""

    .line 63
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTimeZone()I
    .locals 3

    .prologue
    .line 549
    const/16 v0, 0x8

    .line 551
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0x36ee80

    div-int v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return v0

    .line 552
    :catch_0
    move-exception v1

    .line 553
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUiVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    const-string v1, "unKnow"

    .line 208
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 209
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 210
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.rom.id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "unKnow"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 223
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 215
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 217
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 219
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static int2Ip(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 795
    invoke-static {p0, p1}, Lcom/nubia/reyun/utils/AppUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCharging(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 810
    new-instance v0, Landroid/content/IntentFilter;

    .line 811
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 810
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 812
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 813
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 814
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 815
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 814
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNubiaRom(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 791
    const-string v0, "cn.nubia.accounts"

    invoke-static {p0, v0}, Lcom/nubia/reyun/utils/AppUtil;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 799
    .line 800
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    check-cast v0, Landroid/os/PowerManager;

    .line 802
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 806
    :goto_0
    return v0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifi(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 466
    .line 469
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    const-string v2, "connectivity"

    .line 469
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 471
    if-nez v0, :cond_0

    move v0, v1

    .line 486
    :goto_0
    return v0

    .line 474
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 478
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 479
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method
