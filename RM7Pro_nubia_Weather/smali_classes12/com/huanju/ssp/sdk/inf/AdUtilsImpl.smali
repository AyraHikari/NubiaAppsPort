.class public Lcom/huanju/ssp/sdk/inf/AdUtilsImpl;
.super Ljava/lang/Object;
.source "AdUtilsImpl.java"

# interfaces
.implements Lcom/huanju/ssp/sdk/inf/AdUtils;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "AdModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdUtilsImpl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 243
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkIntervalTime(Ljava/lang/String;JJ)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "defaultValue"    # J

    .prologue
    .line 458
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huanju/ssp/base/utils/Utils;->checkIntervalTime(Ljava/lang/String;JJ)Z

    move-result v0

    return v0
.end method

.method public decodeInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/Utils;->decodeInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "cbcIv"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/base/utils/KeyUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/KeyUtil;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/KeyUtil;->decryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dp2px(F)I
    .locals 1
    .param p1, "dpValue"    # F

    .prologue
    .line 473
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "cbcIv"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/base/utils/KeyUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gZip([B)[B
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 363
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/SystemUtils;->gZip([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getBluetoothMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBssId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getBssId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCPUSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellularId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCellularId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConst_AD_CONTENT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string v0, "adContent"

    return-object v0
.end method

.method public getConst_AD_SLOT_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    const-string v0, "adSlotId"

    return-object v0
.end method

.method public getConst_IS_FROM_NUBIA_AD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    const-string v0, "isFromNubiaAd"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 368
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCpuModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCpuModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDPI()F
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDPI()F

    move-result v0

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceDPI()D
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDeviceDPI()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceDpi()D
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceDpi()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDeviceType()I

    move-result v0

    return v0
.end method

.method public getDpi()F
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDpi()F

    move-result v0

    return v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 248
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMSI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiEnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiEnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Z)Ljava/lang/String;
    .locals 1
    .param p1, "isIpv4"    # Z

    .prologue
    .line 273
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIpAddress(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getLac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLksd()I
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getLksd()I

    move-result v0

    return v0
.end method

.method public getLocation()[D
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getLocation()[D

    move-result-object v0

    return-object v0
.end method

.method public getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originalString"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMno()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getMno()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
    .locals 1
    .param p1, "js"    # Lorg/json/JSONStringer;

    .prologue
    .line 303
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;

    move-result-object v0

    return-object v0
.end method

.method public getNetEnvironment()Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->valueOf(Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .prologue
    .line 253
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetType()I

    move-result v0

    return v0
.end method

.method public getNetWorkID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetWorkID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 263
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorsName()I
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getOperatorsName()I

    move-result v0

    return v0
.end method

.method public getOsVersionInt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getOsVersionInt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 413
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getRssi()I

    move-result v0

    return v0
.end method

.method public getSDKVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSDKVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDK_INT()I
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getSDK_INT()I

    move-result v0

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize(Landroid/content/Context;Z)[I
    .locals 1
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "macthScreen"    # Z

    .prologue
    .line 423
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Landroid/content/Context;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getScreenSize(Z)[I
    .locals 1
    .param p1, "matchScreen"    # Z

    .prologue
    .line 428
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSp()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSimCard(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .param p1, "telMgr"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 318
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/SystemUtils;->hasSimCard(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "cx"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z

    .prologue
    .line 373
    invoke-static {p1, p2}, Lcom/huanju/ssp/base/utils/Utils;->init(Landroid/content/Context;Z)V

    .line 374
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 0
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Lcom/huanju/ssp/base/core/common/Config;->init(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public initUserAgent()V
    .locals 0

    .prologue
    .line 358
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->initUserAgent()V

    .line 359
    return-void
.end method

.method public isFastDoubleClick()Z
    .locals 1

    .prologue
    .line 438
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isFastDoubleClick()Z

    move-result v0

    return v0
.end method

.method public isNetworkConnected(Landroid/content/Context;)Z
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 433
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public isRoaming()I
    .locals 1

    .prologue
    .line 298
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->isRoaming()I

    move-result v0

    return v0
.end method

.method public isRoot()I
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->isRoot()I

    move-result v0

    return v0
.end method

.method public isRunInMainThread()Z
    .locals 1

    .prologue
    .line 408
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isRunInMainThread()Z

    move-result v0

    return v0
.end method

.method public loopWeb(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/SystemUtils;->loopWeb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseInputString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->parseInputString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 393
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->post(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 398
    invoke-static {p1, p2, p3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 399
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 403
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    return-void
.end method

.method public removeSelf(Landroid/view/View;)V
    .locals 0
    .param p1, "adView"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->removeSelf(Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public replaceImeiUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, ""

    .line 108
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/inf/AdUtilsImpl;->getImeiEnc()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "imeiEnc":Ljava/lang/String;
    const-string v1, "$FFFFFFFF#FFFFFFFF$"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public runInMainThread(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 388
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->runInMainThread(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public setNetEnvironment(Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;)V
    .locals 1
    .param p1, "netEnvironment"    # Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/common/Config;->setNetEnvironment(Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;)V

    .line 209
    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/huanju/ssp/base/core/common/Config;->setSdkVersion(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public showToastSafe(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {p1}, Lcom/huanju/ssp/base/utils/Utils;->showToastSafe(Ljava/lang/String;)V

    .line 419
    return-void
.end method
