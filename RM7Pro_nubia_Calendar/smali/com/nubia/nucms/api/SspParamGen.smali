.class Lcom/nubia/nucms/api/SspParamGen;
.super Ljava/lang/Object;
.source "SspParamGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;,
        Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;,
        Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;,
        Lcom/nubia/nucms/api/SspParamGen$AdRequstParamInfo;
    }
.end annotation


# static fields
.field private static final KEY_DEVICE:Ljava/lang/String; = "sspDevice"

.field private static final KEY_GPS:Ljava/lang/String; = "gps"

.field private static final KEY_NET:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "SspApiUtils"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mSspClientId:Ljava/lang/String;

.field private mSspCuid:Ljava/lang/String;

.field private mSspDevice:Ljava/lang/String;

.field private mSspDeviceId:Ljava/lang/String;

.field private mSspVersion:Ljava/lang/String;

.field private sspDeviceInfo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sspVersion"    # Ljava/lang/String;
    .param p3, "sspDevice"    # Ljava/lang/String;
    .param p4, "sspCuid"    # Ljava/lang/String;
    .param p5, "sspClientId"    # Ljava/lang/String;
    .param p6, "sspDeviceId"    # Ljava/lang/String;
    .param p7, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspVersion:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDevice:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspCuid:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspClientId:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDeviceId:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    .line 37
    if-nez p5, :cond_0

    const-string p5, ""

    .end local p5    # "sspClientId":Ljava/lang/String;
    :cond_0
    iput-object p5, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspClientId:Ljava/lang/String;

    .line 38
    if-nez p3, :cond_1

    const-string p3, ""

    .end local p3    # "sspDevice":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDevice:Ljava/lang/String;

    .line 39
    if-nez p6, :cond_2

    const-string p6, ""

    .end local p6    # "sspDeviceId":Ljava/lang/String;
    :cond_2
    iput-object p6, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDeviceId:Ljava/lang/String;

    .line 40
    if-nez p4, :cond_3

    const-string p4, ""

    .end local p4    # "sspCuid":Ljava/lang/String;
    :cond_3
    iput-object p4, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspCuid:Ljava/lang/String;

    .line 41
    if-nez p2, :cond_4

    const-string p2, ""

    .end local p2    # "sspVersion":Ljava/lang/String;
    :cond_4
    iput-object p2, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspVersion:Ljava/lang/String;

    .line 42
    if-nez p7, :cond_5

    const-string p7, ""

    .end local p7    # "deviceId":Ljava/lang/String;
    :cond_5
    iput-object p7, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private gpsInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 123
    const-string v8, "location"

    .line 124
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 125
    .local v2, "lm":Landroid/location/LocationManager;
    if-nez v2, :cond_0

    .line 126
    const-string v8, "Location manager is null"

    invoke-static {v8}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->start()Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "coordinate_type"

    const/4 v10, 0x4

    .line 129
    invoke-virtual {v8, v9, v10}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "lon"

    .line 131
    invoke-virtual {v8, v9, v11}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "lat"

    .line 132
    invoke-virtual {v8, v9, v11}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->end()Lorg/json/JSONObject;

    move-result-object v8

    .line 145
    :goto_0
    return-object v8

    .line 134
    :cond_0
    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v2, v8, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "provider":Ljava/lang/String;
    const/4 v7, 0x1

    .line 136
    .local v7, "type":I
    invoke-static {v2, v6}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getBestLonAndLat(Landroid/location/LocationManager;Ljava/lang/String;)[D

    move-result-object v3

    .line 137
    .local v3, "point":[D
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 138
    .local v4, "lon":D
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 139
    .local v0, "lat":D
    if-nez v3, :cond_1

    .line 140
    const/4 v7, 0x4

    .line 145
    :goto_1
    invoke-static {}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->start()Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "coordinate_type"

    .line 146
    invoke-virtual {v8, v9, v7}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "lon"

    .line 147
    invoke-virtual {v8, v9, v4, v5}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;D)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    const-string v9, "lat"

    .line 148
    invoke-virtual {v8, v9, v0, v1}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->appendParam(Ljava/lang/String;D)Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nubia/nucms/api/SspParamGen$SspGpsInfo;->end()Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_0

    .line 142
    :cond_1
    const/4 v8, 0x0

    aget-wide v4, v3, v8

    .line 143
    aget-wide v0, v3, v9

    goto :goto_1
.end method

.method private networkInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 113
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->start()Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    move-result-object v1

    const-string v2, "carrier"

    .line 115
    invoke-static {v0}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getCurrentCarrier(Landroid/telephony/TelephonyManager;)I

    move-result v3

    .line 114
    invoke-virtual {v1, v2, v3}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    move-result-object v1

    const-string v2, "lac"

    .line 116
    invoke-static {v0}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getLac(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    move-result-object v1

    const-string v2, "mcc"

    .line 117
    invoke-static {v0}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getMcc(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    move-result-object v1

    const-string v2, "bss_id"

    .line 119
    invoke-static {p1}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getBssId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/nubia/nucms/api/SspParamGen$SspNetworkInfo;->end()Lorg/json/JSONObject;

    move-result-object v1

    .line 112
    return-object v1
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    invoke-static {}, Lcom/nubia/nucms/api/CacheManager;->getInstance()Lcom/nubia/nucms/api/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/api/CacheManager;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public start()V
    .locals 9

    .prologue
    .line 50
    iget-object v5, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    const/4 v0, 0x5

    .line 52
    .local v0, "deviceType":I
    :goto_0
    iget-object v5, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 53
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 54
    .local v1, "dpi":I
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 55
    .local v3, "screenHeight":I
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .local v4, "screenWidth":I
    invoke-static {}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->start()Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "os_version"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 58
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "device_type"

    .line 60
    invoke-virtual {v5, v6, v0}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "os_type"

    const-string v7, "Android"

    .line 61
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "vendor"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 64
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "android_id"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v7}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getAndroidIdInSspCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "idfa"

    const/4 v7, 0x0

    .line 67
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "imei"

    .line 69
    invoke-virtual {p0}, Lcom/nubia/nucms/api/SspParamGen;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "imei_md5"

    .line 71
    invoke-virtual {p0}, Lcom/nubia/nucms/api/SspParamGen;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nubia/nucms/api/NuCmsApiUtils;->methodMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "mac"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {v7}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 72
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "w"

    .line 74
    invoke-virtual {v5, v6, v4}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "h"

    .line 75
    invoke-virtual {v5, v6, v3}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "dpi"

    .line 76
    invoke-virtual {v5, v6, v1}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "svr"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspVersion:Ljava/lang/String;

    .line 77
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "os_level"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "device"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDevice:Ljava/lang/String;

    .line 80
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "ssp_device_id"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspDeviceId:Ljava/lang/String;

    .line 81
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "client_id"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspClientId:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    const-string v6, "cuid"

    iget-object v7, p0, Lcom/nubia/nucms/api/SspParamGen;->mSspCuid:Ljava/lang/String;

    .line 83
    invoke-virtual {v5, v6, v7}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->end()Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, p0, Lcom/nubia/nucms/api/SspParamGen;->sspDeviceInfo:Lorg/json/JSONObject;

    .line 84
    return-void

    .line 50
    .end local v0    # "deviceType":I
    .end local v1    # "dpi":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "screenHeight":I
    .end local v4    # "screenWidth":I
    :cond_0
    const/4 v0, 0x4

    goto/16 :goto_0
.end method

.method public update()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 90
    .local v1, "info":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "sspDevice"

    iget-object v4, p0, Lcom/nubia/nucms/api/SspParamGen;->sspDeviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v3, "network"

    iget-object v4, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/nubia/nucms/api/SspParamGen;->networkInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v3, "gps"

    iget-object v4, p0, Lcom/nubia/nucms/api/SspParamGen;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/nubia/nucms/api/SspParamGen;->gpsInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "params":Ljava/lang/String;
    const-string v3, "SspApiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssp update params:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v2

    .line 93
    .end local v2    # "params":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "SspApiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ssp net \u3001 gps and device params put error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
