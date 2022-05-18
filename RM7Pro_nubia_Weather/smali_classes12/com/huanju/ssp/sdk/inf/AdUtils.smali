.class public interface abstract Lcom/huanju/ssp/sdk/inf/AdUtils;
.super Ljava/lang/Object;
.source "AdUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
    }
.end annotation


# virtual methods
.method public abstract bytesToHexString([B)Ljava/lang/String;
.end method

.method public abstract checkIntervalTime(Ljava/lang/String;JJ)Z
.end method

.method public abstract decodeInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract decrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract decryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract dp2px(F)I
.end method

.method public abstract encrypt(Ljava/lang/String;Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract gZip([B)[B
.end method

.method public abstract getAndroidID()Ljava/lang/String;
.end method

.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getAppVer()Ljava/lang/String;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getBluetoothMac()Ljava/lang/String;
.end method

.method public abstract getBssId()Ljava/lang/String;
.end method

.method public abstract getCPUSerial()Ljava/lang/String;
.end method

.method public abstract getCellularId()Ljava/lang/String;
.end method

.method public abstract getCid()Ljava/lang/String;
.end method

.method public abstract getClientID()Ljava/lang/String;
.end method

.method public abstract getConst_AD_CONTENT()Ljava/lang/String;
.end method

.method public abstract getConst_AD_SLOT_ID()Ljava/lang/String;
.end method

.method public abstract getConst_IS_FROM_NUBIA_AD()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCpuModel()Ljava/lang/String;
.end method

.method public abstract getCuid()Ljava/lang/String;
.end method

.method public abstract getDPI()F
.end method

.method public abstract getDevice()Ljava/lang/String;
.end method

.method public abstract getDeviceDPI()D
.end method

.method public abstract getDeviceDpi()D
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getDeviceType()I
.end method

.method public abstract getDpi()F
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getIMEI(I)Ljava/lang/String;
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getImeiEnc()Ljava/lang/String;
.end method

.method public abstract getImeiMD5()Ljava/lang/String;
.end method

.method public abstract getIpAddress(Z)Ljava/lang/String;
.end method

.method public abstract getLac()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLksd()I
.end method

.method public abstract getLocation()[D
.end method

.method public abstract getMD5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getMcc()Ljava/lang/String;
.end method

.method public abstract getMno()Ljava/lang/String;
.end method

.method public abstract getNeighboringCellInfo(Lorg/json/JSONStringer;)Lorg/json/JSONStringer;
.end method

.method public abstract getNetEnvironment()Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
.end method

.method public abstract getNetType()I
.end method

.method public abstract getNetWorkID()Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getOSVersion()Ljava/lang/String;
.end method

.method public abstract getOperatorsName()I
.end method

.method public abstract getOsVersionInt()Ljava/lang/String;
.end method

.method public abstract getPkgName()Ljava/lang/String;
.end method

.method public abstract getResolution()Ljava/lang/String;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getRssi()I
.end method

.method public abstract getSDKVer()Ljava/lang/String;
.end method

.method public abstract getSDK_INT()I
.end method

.method public abstract getSSID()Ljava/lang/String;
.end method

.method public abstract getScreenSize(Landroid/content/Context;Z)[I
.end method

.method public abstract getScreenSize(Z)[I
.end method

.method public abstract getSdkVersion()Ljava/lang/String;
.end method

.method public abstract getSerial()Ljava/lang/String;
.end method

.method public abstract getSp()Landroid/content/SharedPreferences;
.end method

.method public abstract getUiHandler()Landroid/os/Handler;
.end method

.method public abstract getVendor()Ljava/lang/String;
.end method

.method public abstract getWifiMacAddress()Ljava/lang/String;
.end method

.method public abstract hasSimCard(Landroid/telephony/TelephonyManager;)Z
.end method

.method public abstract init(Landroid/content/Context;Z)V
.end method

.method public abstract init(Ljava/lang/String;)V
.end method

.method public abstract initUserAgent()V
.end method

.method public abstract isFastDoubleClick()Z
.end method

.method public abstract isNetworkConnected(Landroid/content/Context;)Z
.end method

.method public abstract isPortrait()Z
.end method

.method public abstract isRoaming()I
.end method

.method public abstract isRoot()I
.end method

.method public abstract isRunInMainThread()Z
.end method

.method public abstract loopWeb(Ljava/lang/String;)Z
.end method

.method public abstract parseInputString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/Runnable;)V
.end method

.method public abstract postDelayed(Ljava/lang/Runnable;J)V
.end method

.method public abstract removeCallbacks(Ljava/lang/Runnable;)V
.end method

.method public abstract removeSelf(Landroid/view/View;)V
.end method

.method public abstract replaceImeiUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract runInMainThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setNetEnvironment(Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;)V
.end method

.method public abstract setSdkVersion(Ljava/lang/String;)V
.end method

.method public abstract showToastSafe(Ljava/lang/String;)V
.end method
