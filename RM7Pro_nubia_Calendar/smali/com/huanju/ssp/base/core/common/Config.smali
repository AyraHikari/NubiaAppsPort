.class public Lcom/huanju/ssp/base/core/common/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;
    }
.end annotation


# static fields
.field public static final AD_RENDER_TIME_OUT:J = 0x7d0L

.field public static final AD_REQUEST_TIME_OUT:J = 0xbb8L

.field public static BANNER_REQUEST_INTERVAL:J = 0x0L

.field public static final CHECK_VIDEO_TIME:J = 0x3e8L

.field public static final CHECK_VIEW_TIME:J = 0xbb8L

.field public static final OS_TYPE:Ljava/lang/String; = "Android"

.field public static final REQ_AD_TYPE_BAIDU:I = 0x2

.field public static final REQ_AD_TYPE_KS:I = 0x4

.field public static final REQ_AD_TYPE_SSP:I = 0x1

.field public static final REQ_AD_TYPE_TT:I = 0x3

.field public static final REQ_RECOMMEND_APP_EXTEND:Ljava/lang/String; = "extend"

.field public static final REQ_RECOMMEND_APP_PACKAGE_NAME:Ljava/lang/String; = "pack_name"

.field public static final REQ_RECOMMEND_APP_VER_CODE:Ljava/lang/String; = "ver_code"

.field public static final REQ_RECOMMEND_APP_VER_NAME:Ljava/lang/String; = "ver_name"

.field public static SDK_CHANNEL:Ljava/lang/String;

.field public static SDK_NAME:Ljava/lang/String;

.field public static SDK_VERSION:Ljava/lang/String;

.field public static TAG_BITMAP_KEY:I

.field private static cid:Ljava/lang/String;

.field private static lac:Ljava/lang/String;

.field private static mAndroidID:Ljava/lang/String;

.field public static mAppId:Ljava/lang/String;

.field private static mAppPackageName:Ljava/lang/String;

.field private static mAppVersion:Ljava/lang/String;

.field private static mAppVersionCode:I

.field private static mBluetoothMac:Ljava/lang/String;

.field private static mClientID:Ljava/lang/String;

.field private static mCpuModel:Ljava/lang/String;

.field private static mCpuSerial:Ljava/lang/String;

.field private static mCuid:Ljava/lang/String;

.field private static mDevice:Ljava/lang/String;

.field private static mDeviceDpi:D

.field private static mDeviceID:Ljava/lang/String;

.field private static mDeviceModel:Ljava/lang/String;

.field private static mDeviceType:I

.field private static mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

.field private static mDpi:F

.field private static mImei:Ljava/lang/String;

.field private static mImeiEnc:Ljava/lang/String;

.field private static mImeiMD5:Ljava/lang/String;

.field private static mImeiMD5Low:Ljava/lang/String;

.field private static mImsi:Ljava/lang/String;

.field private static mIsRoot:I

.field private static mLanguage:Ljava/lang/String;

.field private static mMacAddress:Ljava/lang/String;

.field private static mOsVersion:Ljava/lang/String;

.field private static mOsVersionInt:Ljava/lang/String;

.field public static mPorviderName:Ljava/lang/String;

.field private static mResolution:Ljava/lang/String;

.field private static mSerial:Ljava/lang/String;

.field private static mVendor:Ljava/lang/String;

.field private static mcc:Ljava/lang/String;

.field private static mno:Ljava/lang/String;

.field private static sNetEnvironment:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 65
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/huanju/ssp/base/core/common/Config;->BANNER_REQUEST_INTERVAL:J

    .line 71
    const/high16 v0, 0x6f000000

    sput v0, Lcom/huanju/ssp/base/core/common/Config;->TAG_BITMAP_KEY:I

    .line 83
    sput v2, Lcom/huanju/ssp/base/core/common/Config;->mAppVersionCode:I

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mcc:Ljava/lang/String;

    .line 111
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mno:Ljava/lang/String;

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->lac:Ljava/lang/String;

    .line 113
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->cid:Ljava/lang/String;

    .line 152
    sput v2, Lcom/huanju/ssp/base/core/common/Config;->mIsRoot:I

    .line 172
    const-string v0, "SSP_SDK"

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_NAME:Ljava/lang/String;

    .line 176
    const-string v0, "1"

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_CHANNEL:Ljava/lang/String;

    .line 199
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/huanju/ssp/base/core/common/Config;->mDpi:F

    .line 200
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceDpi:D

    .line 206
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    .line 210
    const-string v0, "1.46.3"

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->sNetEnvironment:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    .line 214
    new-instance v0, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    const-string v1, "content://cn.nubia.provider.deviceid.dataid/oaid?mids&altoaid&udid"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    .line 216
    const-string v0, ""

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mPorviderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAndroidID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAndroidID:Ljava/lang/String;

    .line 295
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAndroidID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppPackageName:Ljava/lang/String;

    .line 245
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVerCode()I
    .locals 2

    .prologue
    .line 232
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVerCode()I

    move-result v0

    sput v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersionCode:I

    .line 235
    :cond_0
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersionCode:I

    return v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getAppVer()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersion:Ljava/lang/String;

    .line 225
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailMem()J
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 493
    const-wide/16 v0, 0x0

    .line 496
    .local v0, "availMem":J
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 498
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 500
    .local v4, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 501
    iget-wide v0, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailMem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 506
    return-wide v0

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBattery()I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 482
    .local v0, "battery":I
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "batterymanager"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 483
    .local v1, "batteryManager":Landroid/os/BatteryManager;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 487
    .end local v1    # "batteryManager":Landroid/os/BatteryManager;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBattery:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 488
    return v0

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBluetoothMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mBluetoothMac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getBluetoothMac()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mBluetoothMac:Ljava/lang/String;

    .line 627
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mBluetoothMac:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuSerial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCPUSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuSerial:Ljava/lang/String;

    .line 657
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuSerial:Ljava/lang/String;

    return-object v0
.end method

.method public static getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCellularId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->cid:Ljava/lang/String;

    .line 333
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mClientID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getClientID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mClientID:Ljava/lang/String;

    .line 553
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mClientID:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getCpuModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuModel:Ljava/lang/String;

    .line 647
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCpuModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCuid:Ljava/lang/String;

    .line 543
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mCuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDevice:Ljava/lang/String;

    .line 526
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDevice:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceDpi()D
    .locals 4

    .prologue
    .line 584
    sget-wide v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceDpi:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 585
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDeviceDPI()D

    move-result-wide v0

    sput-wide v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceDpi:D

    .line 587
    :cond_0
    sget-wide v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceDpi:D

    return-wide v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 560
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceID:Ljava/lang/String;

    .line 563
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceModel:Ljava/lang/String;

    .line 285
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 252
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceType:I

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDeviceType()I

    move-result v0

    sput v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceType:I

    .line 255
    :cond_0
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mDeviceType:I

    return v0
.end method

.method public static getDpi()F
    .locals 2

    .prologue
    .line 577
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mDpi:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getDPI()F

    move-result v0

    sput v0, Lcom/huanju/ssp/base/core/common/Config;->mDpi:F

    .line 580
    :cond_0
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mDpi:F

    return v0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 6

    .prologue
    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEI mImei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 386
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getIMEI(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEI mImei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 389
    const-string v3, "000000000000000"

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 390
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 391
    const-string v3, "com.chaozh.iReaderNubia"

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->setCacheName(Ljava/lang/String;)V

    .line 394
    :cond_0
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-virtual {v3}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->getIMEIs()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "imeis":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEI imeis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 396
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const-string v3, "000000000000000"

    sput-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 398
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 417
    :goto_0
    return-object v3

    .line 400
    :cond_1
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "imeisArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v3, v1

    if-gtz v3, :cond_3

    .line 402
    :cond_2
    const-string v3, "000000000000000"

    sput-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 403
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    goto :goto_0

    .line 405
    :cond_3
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, v1, v3

    .line 406
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 407
    sput-object v2, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 411
    .end local v2    # "s":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIMEI result mImei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 412
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    const-string v3, "000000000000000"

    sput-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 417
    :cond_5
    sget-object v3, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    goto :goto_0

    .line 405
    .restart local v2    # "s":Ljava/lang/String;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getIMSI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImsi:Ljava/lang/String;

    .line 472
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public static getImeiEnc()Ljava/lang/String;
    .locals 10

    .prologue
    .line 434
    sget-object v6, Lcom/huanju/ssp/base/core/common/Config;->mImeiEnc:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 436
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "cuid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "cuidSub":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "imei":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cuid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",imei:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",cuidSub:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 441
    const-string v6, "imei"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAESWeb(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 443
    .local v4, "imeiEnc":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/huanju/ssp/base/core/common/Config;->mImeiEnc:Ljava/lang/String;

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mImeiEnc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/huanju/ssp/base/core/common/Config;->mImeiEnc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",imeiEnc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",jsonObject:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v1    # "cuidSub":Ljava/lang/String;
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "imeiEnc":Ljava/lang/String;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    sget-object v6, Lcom/huanju/ssp/base/core/common/Config;->mImeiEnc:Ljava/lang/String;

    return-object v6

    .line 445
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImeiMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    .line 427
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    return-object v0
.end method

.method public static getImeiMD5Low()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5Low:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getIMEI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/KeyUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    .line 458
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5Low:Ljava/lang/String;

    .line 462
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mImeiMD5Low:Ljava/lang/String;

    return-object v0
.end method

.method public static getLac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->lac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getLac()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->lac:Ljava/lang/String;

    .line 325
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->lac:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mLanguage:Ljava/lang/String;

    .line 597
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mMacAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Lcom/huanju/ssp/base/utils/NetworkUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mMacAddress:Ljava/lang/String;

    .line 516
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mcc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getMcc()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mcc:Ljava/lang/String;

    .line 302
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public static getMno()Ljava/lang/String;
    .locals 4

    .prologue
    .line 307
    :try_start_0
    sget-object v2, Lcom/huanju/ssp/base/core/common/Config;->mno:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 309
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_0

    .line 311
    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/huanju/ssp/base/core/common/Config;->mno:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v2, Lcom/huanju/ssp/base/core/common/Config;->mno:Ljava/lang/String;

    return-object v2

    .line 314
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;
    .locals 1

    .prologue
    .line 707
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->sNetEnvironment:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getOSVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersion:Ljava/lang/String;

    .line 265
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 348
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->getALTID()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "oaid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string v0, ""

    .line 352
    :cond_0
    return-object v0
.end method

.method public static getOsVersionInt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersionInt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getSDK_INT()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersionInt:Ljava/lang/String;

    .line 573
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mOsVersionInt:Ljava/lang/String;

    return-object v0
.end method

.method public static getReqId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "uuid":Ljava/lang/String;
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 532
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

    .line 533
    return-object v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mResolution:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getResolution()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mResolution:Ljava/lang/String;

    .line 607
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mSerial:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mSerial:Ljava/lang/String;

    .line 637
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public static getUdid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 361
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->getUDID()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "udid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    const-string v0, "unknown"

    .line 365
    :cond_0
    return-object v0
.end method

.method public static getVaid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->refresh(Landroid/content/Context;Z)V

    .line 374
    sget-object v1, Lcom/huanju/ssp/base/core/common/Config;->mDid:Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/deviceid/DeviceId;->getRemoteRNDID()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "vaid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const-string v0, "unknown"

    .line 378
    :cond_0
    return-object v0
.end method

.method public static getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->getVendor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->mVendor:Ljava/lang/String;

    .line 275
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 3
    .param p0, "appID"    # Ljava/lang/String;

    .prologue
    .line 665
    sput-object p0, Lcom/huanju/ssp/base/core/common/Config;->mAppId:Ljava/lang/String;

    .line 666
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sdk_version"

    const-string v2, "1.46.3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    .line 668
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->initUserAgent()V

    .line 669
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->initHostInfo()V

    .line 670
    return-void
.end method

.method private static initHostInfo()V
    .locals 2

    .prologue
    .line 673
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config$1;->$SwitchMap$com$huanju$ssp$base$core$common$Config$NetEnvironment:[I

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    const-string v0, "100100"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->UNIQUE_KEY:Ljava/lang/String;

    .line 686
    const-string v0, "y1BJyl3100a12aab"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    .line 687
    const-string v0, "c2f619ae3441ce20"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    .line 690
    :goto_0
    return-void

    .line 675
    :pswitch_0
    const-string v0, "900650"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->UNIQUE_KEY:Ljava/lang/String;

    .line 676
    const-string v0, "Jg0XYfO4f22d96a8"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    .line 677
    const-string v0, "99afc804dc6d5b1b"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    goto :goto_0

    .line 680
    :pswitch_1
    const-string v0, "100100"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->UNIQUE_KEY:Ljava/lang/String;

    .line 681
    const-string v0, "y1BJyl3100a12aab"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    .line 682
    const-string v0, "c2f619ae3441ce20"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isRoot()I
    .locals 2

    .prologue
    .line 614
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mIsRoot:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 615
    invoke-static {}, Lcom/huanju/ssp/base/utils/SystemUtils;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/huanju/ssp/base/core/common/Config;->mIsRoot:I

    .line 617
    :cond_0
    sget v0, Lcom/huanju/ssp/base/core/common/Config;->mIsRoot:I

    return v0

    .line 615
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setImei(Ljava/lang/String;)V
    .locals 1
    .param p0, "iMei"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    sput-object p0, Lcom/huanju/ssp/base/core/common/Config;->mImei:Ljava/lang/String;

    .line 340
    :cond_0
    return-void
.end method

.method public static setNetEnvironment(Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;)V
    .locals 0
    .param p0, "netEnvironment"    # Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    .prologue
    .line 711
    sput-object p0, Lcom/huanju/ssp/base/core/common/Config;->sNetEnvironment:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    .line 712
    return-void
.end method

.method public static setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 698
    sput-object p0, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    .line 699
    return-void
.end method
