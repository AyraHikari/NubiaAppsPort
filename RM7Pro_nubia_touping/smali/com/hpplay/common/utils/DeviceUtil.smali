.class public Lcom/hpplay/common/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DID_TYPE_CPUID:I = 0x3

.field public static final DID_TYPE_DEFAULT:I = 0x0

.field public static final DID_TYPE_ETHERNET:I = 0x2

.field public static final DID_TYPE_OPTION:I = 0x4

.field public static final DID_TYPE_WIFI:I = 0x1

.field public static final FAKE_MAC:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final INVALID_MAC:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final TAG:Ljava/lang/String; = "DeviceUtil"

.field private static sIEMI:Ljava/lang/String;

.field private static sMAC:Ljava/lang/String;

.field private static sOAID:Ljava/lang/String;

.field private static sPermissionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sOAID:Ljava/lang/String;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPermissionDidCach(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 575
    const-string v0, "DeviceUtil"

    const-string v1, "clearPermissionDidCach"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 576
    const-string v0, ""

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    .line 577
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v0

    sget-object v1, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hpplay/common/utils/Preference;->setPermissionDid(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public static destroyProcess(Ljava/lang/Process;)V
    .locals 1

    .prologue
    .line 460
    if-eqz p0, :cond_0

    .line 461
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 466
    if-eqz p0, :cond_0

    .line 467
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 469
    :catch_1
    move-exception v0

    goto :goto_0

    .line 474
    :catch_2
    move-exception v0

    goto :goto_0

    .line 471
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static getActiveMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    const-string v1, ""

    .line 289
    const/4 v2, 0x0

    .line 293
    :try_start_0
    const-string v0, "connectivity"

    .line 294
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 295
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string v3, "DeviceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActiveMac "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    const-string v3, "Ethernet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ETH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x1

    .line 308
    :goto_0
    if-eqz v0, :cond_3

    .line 310
    const-string v0, "eth0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_1
    return-object v0

    .line 301
    :cond_1
    const-string v3, "WIFI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 302
    goto :goto_0

    .line 303
    :cond_2
    const-string v3, "MOBILE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 304
    goto :goto_0

    .line 313
    :cond_3
    const-string v0, "wlan0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v2, "DeviceUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveMac failure,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static getActiveMacNoneColon(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getActiveMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 327
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAndroidDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 125
    sget-object v1, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v0, "DeviceUtil"

    const-string v1, "getAndroidDeviceID telephonyManager can not get androidID"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v0, "DeviceUtil"

    const-string v1, "getAndroidID Settings.Secure can not get androidID"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    const-string v0, "DeviceUtil"

    const-string v1, "getAndroidID Settings.System can not get androidID"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAndroidSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    const-string v0, "DeviceUtil"

    const-string v1, "getAndroidSerial Build can not get androidSerial"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    const-string v0, "DeviceUtil"

    const-string v1, "getAndroidSerial Build can not get androidSerial"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static getBluetoothName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 570
    :goto_0
    return-object v0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 507
    const-string v0, ""

    .line 512
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "cat /proc/cpuinfo"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 513
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 514
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 515
    :try_start_2
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 516
    :try_start_3
    const-string v2, ""

    const-string v2, ""

    .line 517
    const/4 v2, 0x1

    :goto_0
    const/16 v6, 0x64

    if-ge v2, v6, :cond_0

    .line 518
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 519
    if-eqz v6, :cond_0

    .line 520
    const-string v7, "Serial"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_4

    .line 521
    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 522
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 521
    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 530
    :cond_0
    invoke-static {v5}, Lcom/hpplay/common/utils/DeviceUtil;->destroyProcess(Ljava/lang/Process;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 535
    if-eqz v4, :cond_1

    .line 537
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 542
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 544
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 549
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 551
    :try_start_6
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 557
    :cond_3
    :goto_3
    return-object v0

    .line 517
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    .line 539
    const-string v4, "DeviceUtil"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 545
    :catch_1
    move-exception v2

    .line 546
    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 552
    :catch_2
    move-exception v1

    .line 553
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 531
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 532
    :goto_4
    :try_start_7
    const-string v4, "DeviceUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCPUSerial  ex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 535
    if-eqz v3, :cond_5

    .line 537
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 542
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 544
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 549
    :cond_6
    :goto_6
    if-eqz v1, :cond_3

    .line 551
    :try_start_a
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    .line 552
    :catch_4
    move-exception v1

    .line 553
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 538
    :catch_5
    move-exception v3

    .line 539
    const-string v4, "DeviceUtil"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    .line 545
    :catch_6
    move-exception v2

    .line 546
    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_6

    .line 535
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    :goto_7
    if-eqz v4, :cond_7

    .line 537
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 542
    :cond_7
    :goto_8
    if-eqz v2, :cond_8

    .line 544
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 549
    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 551
    :try_start_d
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 554
    :cond_9
    :goto_a
    throw v0

    .line 538
    :catch_7
    move-exception v3

    .line 539
    const-string v4, "DeviceUtil"

    invoke-static {v4, v3}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_8

    .line 545
    :catch_8
    move-exception v2

    .line 546
    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_9

    .line 552
    :catch_9
    move-exception v1

    .line 553
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_a

    .line 535
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 531
    :catch_a
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4

    :catch_c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_4
.end method

.method public static getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    const/4 v1, 0x0

    .line 494
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 495
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 496
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 497
    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 499
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 503
    :goto_1
    return-object v0

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const-string v2, "DeviceUtil"

    const-string v3, "getDeviceIpAddress Error: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    goto :goto_1
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 74
    if-nez v0, :cond_0

    sget-object v2, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    sget-object v2, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "DeviceUtil"

    const-string v2, "get imei failed"

    invoke-static {v0, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    .line 85
    goto :goto_0
.end method

.method public static getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    const-string v1, ""

    .line 339
    :try_start_0
    const-string v0, "connectivity"

    .line 340
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 341
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 343
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v4, "Ethernet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ETH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v4, v2

    move v5, v3

    move v3, v2

    .line 354
    :goto_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    .line 355
    if-nez v6, :cond_a

    .line 383
    :cond_1
    :goto_1
    return-object v1

    .line 346
    :cond_2
    const-string v4, "WIFI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    move v5, v2

    move v3, v2

    .line 347
    goto :goto_0

    .line 348
    :cond_3
    const-string v4, "MOBILE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_b

    move v4, v2

    move v5, v2

    .line 349
    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_2
    move-object v2, v0

    .line 358
    :goto_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 359
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 360
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    .line 361
    :cond_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 363
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_5

    instance-of v8, v1, Ljava/net/Inet4Address;

    if-eqz v8, :cond_5

    .line 364
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 365
    if-eqz v5, :cond_7

    .line 366
    :try_start_2
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "eth0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_6
    move-object v0, v1

    goto :goto_2

    .line 369
    :cond_7
    if-eqz v4, :cond_8

    .line 370
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wlan0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 373
    :cond_8
    if-eqz v3, :cond_6

    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 381
    :goto_4
    const-string v1, "DeviceUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_9
    move-object v1, v2

    .line 383
    goto :goto_1

    .line 380
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_a
    move-object v2, v1

    goto :goto_3

    :cond_b
    move v3, v2

    move v4, v2

    move v5, v2

    goto :goto_0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getOriginalMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 217
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/common/utils/Preference;->setDeviceMac(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-object v0
.end method

.method public static getMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 650
    const-string v0, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMac type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 651
    const-string v5, ""

    .line 652
    const-string v0, ""

    .line 657
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat /sys/class/net/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 658
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 659
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    :try_start_2
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    :try_start_3
    const-string v0, ""

    .line 663
    :cond_0
    if-eqz v0, :cond_d

    .line 664
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 670
    :goto_0
    :try_start_4
    invoke-static {v6}, Lcom/hpplay/common/utils/DeviceUtil;->destroyProcess(Ljava/lang/Process;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 674
    if-eqz v4, :cond_1

    .line 676
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 681
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 683
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 688
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 690
    :try_start_7
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 696
    :cond_3
    :goto_3
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMac macSerial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    :cond_4
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getMacAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 701
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMacByFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_7
    const-string v1, "DeviceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMac return macSerial:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 704
    return-object v0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    const-string v4, "DeviceUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 684
    :catch_1
    move-exception v1

    .line 685
    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 691
    :catch_2
    move-exception v1

    .line 692
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_3

    .line 671
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v5

    .line 672
    :goto_4
    :try_start_8
    const-string v5, "DeviceUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMac  ex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 674
    if-eqz v4, :cond_8

    .line 676
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 681
    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    .line 683
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 688
    :cond_9
    :goto_6
    if-eqz v2, :cond_3

    .line 690
    :try_start_b
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_3

    .line 691
    :catch_4
    move-exception v1

    .line 692
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto/16 :goto_3

    .line 677
    :catch_5
    move-exception v1

    .line 678
    const-string v4, "DeviceUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    .line 684
    :catch_6
    move-exception v1

    .line 685
    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_6

    .line 674
    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    :goto_7
    if-eqz v4, :cond_a

    .line 676
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 681
    :cond_a
    :goto_8
    if-eqz v3, :cond_b

    .line 683
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 688
    :cond_b
    :goto_9
    if-eqz v1, :cond_c

    .line 690
    :try_start_e
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 693
    :cond_c
    :goto_a
    throw v0

    .line 677
    :catch_7
    move-exception v2

    .line 678
    const-string v4, "DeviceUtil"

    invoke-static {v4, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_8

    .line 684
    :catch_8
    move-exception v2

    .line 685
    const-string v3, "DeviceUtil"

    invoke-static {v3, v2}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_9

    .line 691
    :catch_9
    move-exception v1

    .line 692
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_a

    .line 674
    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 671
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_4

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :cond_d
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public static getMacAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 150
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 152
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 156
    if-nez v3, :cond_2

    .line 176
    :cond_1
    :goto_0
    const-string v0, "02:00:00:00:00:00"

    :goto_1
    return-object v0

    .line 159
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    array-length v5, v3

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-byte v6, v3, v0

    .line 161
    const-string v7, "%02X:"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string v3, "00:00:00:00:00:00"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v0, "DeviceUtil"

    const-string v1, "getMacAddr failure"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMacByFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 625
    const-string v0, "DeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMacByFile macPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    .line 628
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 632
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 640
    :cond_0
    :goto_0
    return-object v0

    .line 636
    :catch_0
    move-exception v1

    .line 637
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMacNoneColon(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sOAID:Ljava/lang/String;

    return-object v0
.end method

.method private static getOriginalMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/common/utils/Preference;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 185
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getActiveMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string v0, "wlan0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v0, "eth0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v0, "DeviceUtil"

    const-string v1, "getOriginalMac failed"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    const-string v0, ""

    goto :goto_0
.end method

.method public static getPermissionDid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 587
    const-string v0, "DeviceUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPermissionDid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 589
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    .line 615
    :cond_0
    :goto_0
    return-object v0

    .line 592
    :cond_1
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/common/utils/Preference;->getPermissionDid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    .line 593
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 594
    sget-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sPermissionId:Ljava/lang/String;

    goto :goto_0

    .line 596
    :cond_2
    const-string v0, ""

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 612
    :goto_1
    :pswitch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/common/utils/Preference;->setPermissionDid(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :pswitch_1
    const-string v0, "wlan0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 603
    :pswitch_2
    const-string v0, "eth0"

    invoke-static {v0}, Lcom/hpplay/common/utils/DeviceUtil;->getMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 414
    const-string v5, ""

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprop "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    :try_start_0
    const-string v2, ""

    .line 421
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 422
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 423
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 424
    :try_start_2
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 425
    :try_start_3
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 429
    :goto_0
    :try_start_4
    invoke-static {v6}, Lcom/hpplay/common/utils/DeviceUtil;->destroyProcess(Ljava/lang/Process;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 433
    if-eqz v4, :cond_0

    .line 435
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 440
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 442
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 447
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 449
    :try_start_7
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 455
    :cond_2
    :goto_3
    return-object v0

    .line 436
    :catch_0
    move-exception v1

    .line 437
    const-string v4, "DeviceUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    .line 443
    :catch_1
    move-exception v1

    .line 444
    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_2

    .line 450
    :catch_2
    move-exception v1

    .line 451
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 430
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v5

    .line 431
    :goto_4
    :try_start_8
    const-string v5, "DeviceUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProperty ex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 433
    if-eqz v4, :cond_3

    .line 435
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 440
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 442
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 447
    :cond_4
    :goto_6
    if-eqz v2, :cond_2

    .line 449
    :try_start_b
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 450
    :catch_4
    move-exception v1

    .line 451
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_3

    .line 436
    :catch_5
    move-exception v1

    .line 437
    const-string v4, "DeviceUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_5

    .line 443
    :catch_6
    move-exception v1

    .line 444
    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_6

    .line 433
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_7
    if-eqz v4, :cond_5

    .line 435
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 440
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 442
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 447
    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 449
    :try_start_e
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 452
    :cond_7
    :goto_a
    throw v0

    .line 436
    :catch_7
    move-exception v1

    .line 437
    const-string v4, "DeviceUtil"

    invoke-static {v4, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_8

    .line 443
    :catch_8
    move-exception v1

    .line 444
    const-string v3, "DeviceUtil"

    invoke-static {v3, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_9

    .line 450
    :catch_9
    move-exception v1

    .line 451
    const-string v2, "DeviceUtil"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_a

    .line 433
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 430
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_4

    :catch_c
    move-exception v0

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_4

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :cond_8
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public static getUniqueMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getOriginalMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    array-length v2, v1

    if-lez v2, :cond_0

    .line 249
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 250
    const-string v2, "000"

    invoke-static {v2, v1}, Lcom/hpplay/common/utils/DeviceUtil;->numPreAddZero(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "02:00:00:00:0%s:%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget-char v4, v0, v5

    .line 254
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v5

    aget-char v4, v0, v6

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v6

    aget-char v0, v0, v7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v3, v7

    .line 253
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_2
    sput-object v0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 258
    invoke-static {p0}, Lcom/hpplay/common/utils/Preference;->getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/common/utils/Preference;->setDeviceMac(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUniqueMacNoneColon(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 275
    invoke-static {p0}, Lcom/hpplay/common/utils/DeviceUtil;->getUniqueMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 279
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getWifiIPAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 387
    const-string v2, ""

    .line 390
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 391
    if-nez v3, :cond_0

    move-object v0, v2

    .line 410
    :goto_0
    return-object v0

    .line 394
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 396
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 397
    :cond_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 399
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v1, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 400
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "wlan0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v1, "DeviceUtil"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_2
    move-object v0, v2

    .line 410
    goto :goto_0
.end method

.method public static isDeviceRooted()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    const-string v3, "su"

    .line 60
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/"

    aput-object v2, v4, v1

    const-string v2, "/system/xbin/"

    aput-object v2, v4, v0

    const/4 v2, 0x2

    const-string v5, "/sbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v4, v2

    const/4 v2, 0x5

    const-string v5, "/data/local/xbin/"

    aput-object v5, v4, v2

    const/4 v2, 0x6

    const-string v5, "/data/local/bin/"

    aput-object v5, v4, v2

    const/4 v2, 0x7

    const-string v5, "/data/local/"

    aput-object v5, v4, v2

    .line 62
    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v4, v2

    .line 63
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    :goto_1
    return v0

    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_1
.end method

.method public static numPreAddZero(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 709
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 715
    :goto_0
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    const-string v0, "DeviceUtil"

    const-string v1, "numPreAddZero error"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 715
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setIMEI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    sput-object p0, Lcom/hpplay/common/utils/DeviceUtil;->sIEMI:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static setMac(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    sput-object p0, Lcom/hpplay/common/utils/DeviceUtil;->sMAC:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public static setOAID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    sput-object p0, Lcom/hpplay/common/utils/DeviceUtil;->sOAID:Ljava/lang/String;

    .line 95
    return-void
.end method
