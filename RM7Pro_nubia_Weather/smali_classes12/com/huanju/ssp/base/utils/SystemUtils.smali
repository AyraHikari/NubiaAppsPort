.class public Lcom/huanju/ssp/base/utils/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
    }
.end annotation


# static fields
.field public static final MILLIS_IN_DAY:J = 0x5265c00L

.field public static final SECONDS_IN_DAY:I = 0x15180


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 380
    :goto_0
    return-object p0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt ChannelID error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gZip([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, "b":[B
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 509
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 510
    .local v4, "gzip":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 511
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 512
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 513
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 514
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 520
    .end local v0    # "b":[B
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v1, "b":[B
    :goto_0
    return-object v1

    .line 515
    .end local v1    # "b":[B
    .restart local v0    # "b":[B
    :catch_0
    move-exception v3

    .line 516
    .local v3, "ex":Ljava/lang/Exception;
    const-string v5, "GZip\u538b\u7f29\u5931\u8d25"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 517
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 518
    .end local v0    # "b":[B
    .restart local v1    # "b":[B
    goto :goto_0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 278
    const-string v0, "nul"

    .line 280
    .local v0, "androidID":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    .line 280
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 283
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    const-string v0, "nul"

    .line 304
    .end local v0    # "androidID":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "androidID":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v2, v4, 0x10

    .line 288
    .local v2, "diff":I
    if-gtz v2, :cond_1

    .line 289
    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "androidIdBuffer":Ljava/lang/StringBuilder;
    :goto_1
    if-lez v2, :cond_2

    .line 295
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 300
    .end local v1    # "androidIdBuffer":Ljava/lang/StringBuilder;
    .end local v2    # "diff":I
    :catch_0
    move-exception v3

    .line 301
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "\u83b7\u53d6Android ID \u5931\u8d25"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 302
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 807
    const-class v5, Lcom/huanju/ssp/base/utils/SystemUtils;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 809
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 808
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 810
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 811
    .local v1, "labelRes":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 815
    .end local v1    # "labelRes":I
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    monitor-exit v5

    return-object v4

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    const/4 v4, 0x0

    goto :goto_0

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVersionInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    const-string v0, "nul"

    .line 439
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVersionInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAppVerCode()I
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVersionInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVersionInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method private static getAppVersionInfo()Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 456
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 457
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 465
    :goto_0
    return-object v1

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AppVersionInfo \u83b7\u53d6\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 463
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBluetoothMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 593
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 594
    .local v0, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, "mac":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u84dd\u7259 mac  \uff1a  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v2    # "mac":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 597
    :catch_0
    move-exception v1

    .line 598
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "\u84dd\u7259Mac\u5730\u5740\u83b7\u53d6\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 599
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 600
    const-string v2, "nul"

    goto :goto_0
.end method

.method public static getBssId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 259
    const-string v1, "nul"

    .line 262
    .local v1, "mBss_id":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    .line 263
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 264
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 266
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "0"

    .end local v1    # "mBss_id":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 270
    .restart local v1    # "mBss_id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "\u83b7\u53d6\u624b\u673amac\u5730\u5740 \u5931\u8d25"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getCPUInfo()Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 660
    const/16 v6, 0x400

    :try_start_0
    new-array v0, v6, [B

    .line 661
    .local v0, "bs":[B
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/cpuinfo"

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    .local v3, "reader":Ljava/io/RandomAccessFile;
    const-string v4, ""

    .line 663
    .local v4, "ret":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 664
    new-instance v4, Ljava/lang/String;

    .end local v4    # "ret":Ljava/lang/String;
    const-string v6, "UTF-8"

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 667
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 668
    .local v2, "index":I
    if-eq v2, v8, :cond_1

    .line 669
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 679
    .end local v2    # "index":I
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .end local v4    # "ret":Ljava/lang/String;
    .local v5, "strInfo":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Lcom/huanju/ssp/base/utils/SystemUtils;->parseCPUInfo(Ljava/lang/String;)Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;

    move-result-object v6

    return-object v6

    .line 671
    .end local v5    # "strInfo":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v3    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_1
    move-object v5, v4

    .restart local v5    # "strInfo":Ljava/lang/String;
    goto :goto_0

    .line 673
    .end local v2    # "index":I
    .end local v3    # "reader":Ljava/io/RandomAccessFile;
    .end local v4    # "ret":Ljava/lang/String;
    .end local v5    # "strInfo":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 674
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, ""

    .line 675
    .restart local v5    # "strInfo":Ljava/lang/String;
    const-string v6, "CPU info \u83b7\u53d6\u5931\u8d25"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 676
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 736
    const-string v0, "0000000000000000"

    .line 737
    .local v0, "cpuAddress":Ljava/lang/String;
    const/4 v3, 0x0

    .line 740
    .local v3, "input":Ljava/io/LineNumberReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /proc/cpuinfo"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 741
    .local v5, "pp":Ljava/lang/Process;
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v8, v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .local v4, "input":Ljava/io/LineNumberReader;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x64

    if-ge v2, v8, :cond_0

    .line 744
    :try_start_1
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 747
    const-string v8, "Serial"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 749
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 750
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 749
    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "strCPU":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 765
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "strCPU":Ljava/lang/String;
    :cond_0
    new-array v8, v12, [Ljava/io/Closeable;

    aput-object v4, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    move-object v3, v4

    .line 767
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .end local v5    # "pp":Ljava/lang/Process;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    :goto_1
    return-object v0

    .line 743
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "pp":Ljava/lang/Process;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v2    # "i":I
    .end local v4    # "input":Ljava/io/LineNumberReader;
    .end local v5    # "pp":Ljava/lang/Process;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v8, "CPU \u5e8f\u5217\u53f7 \u83b7\u53d6\u5931\u8d25"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 763
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 765
    new-array v8, v12, [Ljava/io/Closeable;

    aput-object v3, v8, v11

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    new-array v9, v12, [Ljava/io/Closeable;

    aput-object v3, v9, v11

    invoke-static {v9}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 766
    throw v8

    .line 765
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .restart local v2    # "i":I
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v5    # "pp":Ljava/lang/Process;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    goto :goto_3

    .line 760
    .end local v3    # "input":Ljava/io/LineNumberReader;
    .restart local v4    # "input":Ljava/io/LineNumberReader;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/LineNumberReader;
    .restart local v3    # "input":Ljava/io/LineNumberReader;
    goto :goto_2
.end method

.method public static getCellularId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 175
    const-string v2, ""

    .line 177
    .local v2, "cellularId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "curPkgName":Ljava/lang/String;
    const-string v8, "cn.nubia.gallerylockscreen"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 179
    const-string v2, "0"

    .line 200
    .end local v2    # "cellularId":Ljava/lang/String;
    .end local v3    # "curPkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 181
    .restart local v2    # "cellularId":Ljava/lang/String;
    .restart local v3    # "curPkgName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 182
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/huanju/ssp/base/utils/SystemUtils;->hasSimCard(Landroid/telephony/TelephonyManager;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 183
    const-string v8, "\u6ca1\u6709sim\u5361"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v2, "0"

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    .line 187
    .local v6, "location":Landroid/telephony/CellLocation;
    if-eqz v6, :cond_3

    .line 188
    instance-of v8, v6, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_4

    .line 189
    move-object v0, v6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v5, v0

    .line 190
    .local v5, "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    .end local v3    # "curPkgName":Ljava/lang/String;
    .end local v5    # "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "location":Landroid/telephony/CellLocation;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v2, "0"

    goto :goto_0

    .line 191
    .restart local v3    # "curPkgName":Ljava/lang/String;
    .restart local v6    # "location":Landroid/telephony/CellLocation;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    instance-of v8, v6, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_3

    .line 192
    move-object v0, v6

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    .line 193
    .local v1, "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 196
    .end local v1    # "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v3    # "curPkgName":Ljava/lang/String;
    .end local v6    # "location":Landroid/telephony/CellLocation;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    .line 197
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "getCellularId \u5931\u8d25"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 198
    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/SystemUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuModel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 639
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCPUInfo()Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;

    move-result-object v2

    .line 641
    .local v2, "in":Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
    iget v3, v2, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 642
    const-string v0, "armv5"

    .line 653
    :goto_0
    return-object v0

    .line 643
    :cond_0
    iget v3, v2, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 644
    const-string v0, "armv6"

    .local v0, "cpu_model":Ljava/lang/String;
    goto :goto_0

    .line 645
    .end local v0    # "cpu_model":Ljava/lang/String;
    :cond_1
    iget v3, v2, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_2

    .line 646
    const-string v0, "armv7"

    .restart local v0    # "cpu_model":Ljava/lang/String;
    goto :goto_0

    .line 648
    .end local v0    # "cpu_model":Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "cpu_model":Ljava/lang/String;
    goto :goto_0

    .line 650
    .end local v0    # "cpu_model":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CPU \u7c7b\u578b\u83b7\u53d6\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 652
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 653
    const-string v0, "nul"

    goto :goto_0
.end method

.method public static getDPI()F
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    .line 420
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 421
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 422
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 424
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    return v2
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 4

    .prologue
    .line 357
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 358
    .local v1, "mModel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const-string v1, "nul"

    .line 364
    :goto_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 365
    .local v0, "mManufacturer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 366
    const-string v0, "nul"

    .line 371
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 361
    .end local v0    # "mManufacturer":Ljava/lang/String;
    :cond_0
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 368
    .restart local v0    # "mManufacturer":Ljava/lang/String;
    :cond_1
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDeviceDPI()D
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    .line 429
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 430
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 431
    .local v0, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 432
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v2, v2

    return-wide v2
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/SystemUtils;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    const-string v1, ""

    .line 98
    .local v1, "model":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string v1, "nul"

    .line 105
    :cond_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 3

    .prologue
    .line 348
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x5

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 348
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDisableLoc()I
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 822
    .local v1, "disableLoc":I
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 823
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_based_delivery_restrictions"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 827
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisableLoc disableLoc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 828
    return v1

    .line 824
    :catch_0
    move-exception v2

    .line 825
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDisableRec()I
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    .prologue
    .line 833
    const/4 v1, 0x0

    .line 835
    .local v1, "disableRec":I
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 836
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "personalized_recommendation_ad_restrictions"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 840
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisableRec disableRec:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 841
    return v1

    .line 837
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 114
    const-string v2, "nul"

    .line 128
    :cond_0
    :goto_0
    return-object v2

    .line 116
    :cond_1
    const-string v2, "nul"

    .line 118
    .local v2, "imsi":Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    .line 119
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 120
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    const-string v2, "nul"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "\u83b7\u53d6IMSI \u5931\u8d25"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLac()Ljava/lang/String;
    .locals 10

    .prologue
    .line 204
    const-string v5, ""

    .line 206
    .local v5, "lac":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "curPkgName":Ljava/lang/String;
    const-string v8, "cn.nubia.gallerylockscreen"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 208
    const-string v5, "0"

    .line 229
    .end local v2    # "curPkgName":Ljava/lang/String;
    .end local v5    # "lac":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 210
    .restart local v2    # "curPkgName":Ljava/lang/String;
    .restart local v5    # "lac":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 211
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/huanju/ssp/base/utils/SystemUtils;->hasSimCard(Landroid/telephony/TelephonyManager;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 212
    const-string v8, "\u6ca1\u6709sim\u5361"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 213
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v5, "0"

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    .line 216
    .local v6, "location":Landroid/telephony/CellLocation;
    if-eqz v6, :cond_3

    .line 217
    instance-of v8, v6, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v8, :cond_4

    .line 218
    move-object v0, v6

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v4, v0

    .line 219
    .local v4, "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 229
    .end local v2    # "curPkgName":Ljava/lang/String;
    .end local v4    # "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "location":Landroid/telephony/CellLocation;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v5, "0"

    goto :goto_0

    .line 220
    .restart local v2    # "curPkgName":Ljava/lang/String;
    .restart local v6    # "location":Landroid/telephony/CellLocation;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    instance-of v8, v6, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_3

    .line 221
    move-object v0, v6

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    .line 222
    .local v1, "cdmaLocation":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    .line 225
    .end local v1    # "cdmaLocation":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v2    # "curPkgName":Ljava/lang/String;
    .end local v6    # "location":Landroid/telephony/CellLocation;
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "Get Lac \u5931\u8d25"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 227
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 532
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "\u7cfb\u7edf\u8bed\u8a00 \u83b7\u53d6\u5931\u8d25"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 533
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 534
    const-string v1, "nul"

    goto :goto_0
.end method

.method public static getLocation()[D
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 310
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "curPkgName":Ljava/lang/String;
    const-string v6, "cn.nubia.gallerylockscreen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    const/4 v6, 0x2

    new-array v6, v6, [D

    fill-array-data v6, :array_0

    .line 338
    :goto_0
    return-object v6

    .line 315
    :cond_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 317
    .local v3, "locationManager":Landroid/location/LocationManager;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    .line 318
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 319
    .local v2, "location":Landroid/location/Location;
    const-string v6, "gps"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 321
    const-string v4, "gps"

    .line 322
    .local v4, "locationProvider":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 330
    .end local v4    # "locationProvider":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 331
    const/4 v6, 0x2

    new-array v6, v6, [D

    fill-array-data v6, :array_1

    goto :goto_0

    .line 324
    :cond_2
    const-string v6, "network"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    const-string v4, "network"

    .line 327
    .restart local v4    # "locationProvider":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    goto :goto_1

    .line 333
    .end local v4    # "locationProvider":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "locationManager":Landroid/location/LocationManager;
    .end local v5    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "\u83b7\u53d6\u7ecf\u7eac\u5ea6\u5931\u8d25"

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    new-array v6, v10, [D

    fill-array-data v6, :array_2

    goto :goto_0

    .line 312
    nop

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 331
    :array_1
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    .line 338
    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 233
    const-string v2, "nul"

    .line 235
    .local v2, "mcc":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "curPkgName":Ljava/lang/String;
    const-string v5, "cn.nubia.gallerylockscreen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    const-string v5, "gallerylockscreen not lcp"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "nul"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string v2, "460"

    .line 252
    .end local v0    # "curPkgName":Ljava/lang/String;
    .end local v2    # "mcc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 240
    .restart local v0    # "curPkgName":Ljava/lang/String;
    .restart local v2    # "mcc":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 241
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "operator":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_3

    .line 244
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    .end local v0    # "curPkgName":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "nul"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    const-string v2, "460"

    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "get Mcc \u5931\u8d25"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 250
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    const-string v1, ""

    .line 61
    .local v1, "release":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v1, "nul"

    .line 69
    :cond_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOperatorsName()I
    .locals 4

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, "ProvidersName":I
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "IMSI":Ljava/lang/String;
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    :cond_0
    const/4 v1, 0x1

    .line 151
    .end local v0    # "IMSI":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 142
    .restart local v0    # "IMSI":Ljava/lang/String;
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    const/4 v1, 0x3

    goto :goto_0

    .line 144
    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    const/4 v1, 0x2

    goto :goto_0

    .line 147
    .end local v0    # "IMSI":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "\u83b7\u53d6\u624b\u673a\u670d\u52a1\u5546\u540d\u5b57 \u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 149
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getReqId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 624
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "uuid":Ljava/lang/String;
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReqId uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 627
    return-object v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 543
    const-string v2, ""

    .line 545
    .local v2, "mResolution":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 546
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 547
    .local v0, "display":Landroid/view/Display;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-le v5, v6, :cond_1

    .line 548
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 549
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 561
    .end local v0    # "display":Landroid/view/Display;
    .end local v3    # "size":Landroid/graphics/Point;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .local v1, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v2

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v4    # "wm":Landroid/view/WindowManager;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 554
    .end local v0    # "display":Landroid/view/Display;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 555
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "\u624b\u673a\u5206\u8fa8\u7387 \u83b7\u53d6\u5931\u8d25"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 556
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 558
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const-string v2, "nul"

    goto :goto_0
.end method

.method public static getSDK_INT()I
    .locals 1

    .prologue
    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 3

    .prologue
    .line 611
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 612
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "nul"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "pseudo-unique ID \u83b7\u53d6\u5931\u8d25"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 618
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 619
    const-string v1, "nul"

    goto :goto_0
.end method

.method public static getVendor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const-string v1, ""

    .line 82
    .local v1, "vendor":Ljava/lang/String;
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v1, "nul"

    .line 89
    :cond_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static hasSimCard(Landroid/telephony/TelephonyManager;)Z
    .locals 3
    .param p0, "telMgr"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 161
    .local v1, "simState":I
    const/4 v0, 0x1

    .line 162
    .local v0, "result":Z
    packed-switch v1, :pswitch_data_0

    .line 170
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "\u6709SIM\u5361"

    :goto_1
    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 171
    return v0

    .line 164
    :pswitch_0
    const/4 v0, 0x0

    .line 165
    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_0
    const-string v2, "\u65e0SIM\u5361"

    goto :goto_1

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static initUserAgent()V
    .locals 5

    .prologue
    .line 472
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    .local v1, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v3, "UA_KEY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 477
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 479
    :try_start_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 487
    .local v2, "userAgentString":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    const-string v3, "\u83b7\u53d6UA\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 499
    .end local v2    # "userAgentString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 482
    .restart local v2    # "userAgentString":Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "userAgentString":Ljava/lang/String;
    :cond_1
    const-string v3, "http.agent"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "userAgentString":Ljava/lang/String;
    goto :goto_0

    .line 492
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "UA_KEY"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 494
    .end local v2    # "userAgentString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 495
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "UserAgent \u83b7\u53d6\u5931\u8d25"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 496
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isRoot()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 571
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "/system/bin/"

    aput-object v6, v3, v5

    const-string v6, "/system/xbin/"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    const-string v7, "/system/sbin/"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "/sbin/"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "/vendor/bin/"

    aput-object v7, v3, v6

    .line 574
    .local v3, "kSuSearchPaths":[Ljava/lang/String;
    :try_start_0
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v3, v6

    .line 575
    .local v2, "kSuSearchPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 585
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "kSuSearchPath":Ljava/lang/String;
    :goto_1
    return v4

    .line 574
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "kSuSearchPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "kSuSearchPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "root\u68c0\u6d4b\u5931\u8d25"

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 582
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 585
    goto :goto_1
.end method

.method public static isSameDayOfMillis(JJ)Z
    .locals 6
    .param p0, "ms1"    # J
    .param p2, "ms2"    # J

    .prologue
    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---isSameDayOfMillis ms1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ms2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 795
    sub-long v0, p0, p2

    .line 796
    .local v0, "interval":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, -0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 798
    invoke-static {p0, p1}, Lcom/huanju/ssp/base/utils/SystemUtils;->toDay(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Lcom/huanju/ssp/base/utils/SystemUtils;->toDay(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 796
    :goto_0
    return v2

    .line 798
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static loopWeb(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 409
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    const/4 v2, 0x1

    .line 415
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "\u8df3\u8f6c\u7cfb\u7edf\u6d4f\u89c8\u5668 \u5931\u8d25"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 413
    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 415
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static parseCPUInfo(Ljava/lang/String;)Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
    .locals 10
    .param p0, "cpuInfo"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 683
    if-eqz p0, :cond_0

    const-string v8, ""

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 684
    :cond_0
    const/4 v0, 0x0

    .line 729
    :cond_1
    return-object v0

    .line 687
    :cond_2
    new-instance v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;

    invoke-direct {v0}, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;-><init>()V

    .line 688
    .local v0, "ci":Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;
    iput v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    .line 689
    iput v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    .line 690
    iput v7, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I

    .line 692
    const-string v8, "ARMv5"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 693
    iput v7, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    .line 700
    :cond_3
    :goto_0
    const-string v8, "neon"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 701
    iget v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    .line 704
    :cond_4
    const-string v8, "vfpv3"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 705
    iget v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    .line 708
    :cond_5
    const-string v8, " vfp"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 709
    iget v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUFeature:I

    .line 712
    :cond_6
    const-string v8, "\n"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "items":[Ljava/lang/String;
    array-length v9, v4

    move v8, v6

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v3, v4, v8

    .line 715
    .local v3, "item":Ljava/lang/String;
    const-string v6, "CPU variant"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 716
    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 717
    .local v2, "index":I
    if-ltz v2, :cond_7

    .line 718
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 720
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I

    .line 721
    iget v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I

    if-nez v6, :cond_a

    move v6, v7

    :goto_2
    iput v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .end local v2    # "index":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_1

    .line 694
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    :cond_8
    const-string v8, "ARMv6"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 695
    const/16 v8, 0x10

    iput v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    goto :goto_0

    .line 696
    :cond_9
    const-string v8, "ARMv7"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 697
    const/16 v8, 0x100

    iput v8, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUType:I

    goto :goto_0

    .line 721
    .restart local v2    # "index":I
    .restart local v3    # "item":Ljava/lang/String;
    .restart local v4    # "items":[Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_a
    :try_start_1
    iget v6, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/NumberFormatException;
    iput v7, v0, Lcom/huanju/ssp/base/utils/SystemUtils$CPUInfo;->mCPUCount:I

    goto :goto_3
.end method

.method private static toDay(J)J
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 802
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method
