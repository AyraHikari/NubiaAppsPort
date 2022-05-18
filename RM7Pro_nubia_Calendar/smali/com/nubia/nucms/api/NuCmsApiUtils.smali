.class Lcom/nubia/nucms/api/NuCmsApiUtils;
.super Ljava/lang/Object;
.source "NuCmsApiUtils.java"


# static fields
.field private static final ANDROID_M:I = 0x17

.field private static final CHAR_EQUAL:Ljava/lang/String; = "="

.field private static final TAG:Ljava/lang/String; = "NuCmsApiUtils"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToMD5(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/network/http/params/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "paramList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/network/http/params/NameValuePair;>;"
    if-nez p0, :cond_0

    .line 78
    const-string v6, "NuCmsApiUtils"

    const-string v7, "request params is null,return"

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    .line 96
    :goto_0
    return-object v2

    .line 81
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v4, "paramBuf":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nubia/nucms/network/http/params/NameValuePair;

    .line 85
    .local v3, "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_2
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/params/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 87
    .end local v3    # "pair":Lcom/nubia/nucms/network/http/params/NameValuePair;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 88
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 87
    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v1, v6

    check-cast v1, [Ljava/lang/String;

    .line 89
    .local v1, "keys":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 90
    array-length v8, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    if-ge v7, v8, :cond_3

    aget-object v0, v1, v7

    .line 91
    .local v0, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 93
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk;->getInstance()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nubia/nucms/api/NuCmsSdk;->getSecretKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nubia/nucms/api/NuCmsApiUtils;->methodMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "md5code":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "md5 :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nubia/nucms/api/NuCmsApiUtils;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getAndroidIdInSspCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    .line 168
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "androidID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    const-string v3, "nul"

    .line 183
    :goto_0
    return-object v3

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v2, v3, 0x10

    .line 176
    .local v2, "e":I
    if-gtz v2, :cond_1

    .line 177
    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, "androidIdBuffer":Ljava/lang/StringBuilder;
    :goto_1
    if-lez v2, :cond_2

    .line 181
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getBestLonAndLat(Landroid/location/LocationManager;Ljava/lang/String;)[D
    .locals 9
    .param p0, "lm"    # Landroid/location/LocationManager;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    const/4 v3, 0x0

    .line 388
    :cond_0
    :goto_0
    return-object v3

    .line 378
    :cond_1
    const/4 v4, 0x4

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v6

    const-string v4, "gps"

    aput-object v4, v1, v7

    const-string v4, "network"

    aput-object v4, v1, v8

    const/4 v4, 0x3

    const-string v5, "passive"

    aput-object v5, v1, v4

    .line 379
    .local v1, "list":[Ljava/lang/String;
    new-array v3, v8, [D

    fill-array-data v3, :array_0

    .line 380
    .local v3, "point":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 381
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 382
    .local v2, "location":Landroid/location/Location;
    if-eqz v2, :cond_2

    .line 383
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 384
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v7

    goto :goto_0

    .line 380
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static getBssId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 268
    if-nez p0, :cond_1

    .line 269
    const-string v0, "0"

    .line 280
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    const-string v3, "wifi"

    .line 272
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 273
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 274
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_2

    .line 275
    const-string v3, "NuCmsApiUtils"

    const-string v4, "wifi info is null"

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "0"

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "bssid":Ljava/lang/String;
    const-string v3, "NuCmsApiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi info bssid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "0"

    goto :goto_0
.end method

.method public static getCurNetworkType(Landroid/content/Context;)I
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 285
    invoke-static {p0}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils;->getNetworkType(Landroid/content/Context;)Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;

    move-result-object v1

    .line 286
    .local v1, "type":Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;
    const/16 v0, 0x63

    .line 287
    .local v0, "newtype":I
    sget-object v2, Lcom/nubia/nucms/api/NuCmsApiUtils$1;->$SwitchMap$com$nubia$nucms$utils$NuCmsNetworkUtils$NetType:[I

    invoke-virtual {v1}, Lcom/nubia/nucms/utils/NuCmsNetworkUtils$NetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 304
    const/16 v0, 0x63

    .line 307
    :goto_0
    return v0

    .line 289
    :pswitch_0
    const/4 v0, 0x2

    .line 290
    goto :goto_0

    .line 292
    :pswitch_1
    const/4 v0, 0x0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_2
    const/4 v0, 0x3

    .line 296
    goto :goto_0

    .line 298
    :pswitch_3
    const/4 v0, 0x4

    .line 299
    goto :goto_0

    .line 301
    :pswitch_4
    const/16 v0, 0x62

    .line 302
    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getCurrentCarrier(Landroid/telephony/TelephonyManager;)I
    .locals 5
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 190
    if-nez p0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v2

    .line 194
    :cond_1
    const/4 v1, 0x0

    .line 196
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    const/4 v2, 0x4

    .line 205
    .local v2, "type":I
    const-string v3, "46000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 197
    .end local v2    # "type":I
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NuCmsApiUtils"

    const-string v4, "getSubscriberId error"

    invoke-static {v3, v4, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "type":I
    :cond_3
    const-string v3, "46001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    const/4 v2, 0x3

    goto :goto_0

    .line 209
    :cond_4
    const-string v3, "46003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 112
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string v1, "000000000000000"

    .line 119
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get device imei:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nubia/nucms/api/NuCmsApiUtils;->log(Ljava/lang/String;)V

    .line 120
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NuCmsApiUtils"

    const-string v4, "getDeviceId error"

    invoke-static {v3, v4, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getLac(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 6
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 216
    const-string v2, ""

    .line 217
    .local v2, "lac":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 218
    const-string v4, "telephony manager is null"

    invoke-static {v4}, Lcom/nubia/nucms/api/NuCmsApiUtils;->log(Ljava/lang/String;)V

    move-object v4, v2

    .line 235
    :goto_0
    return-object v4

    .line 221
    :cond_0
    invoke-static {p0}, Lcom/nubia/nucms/api/NuCmsApiUtils;->hasSimCard(Landroid/telephony/TelephonyManager;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    const-string v4, "has no sim card"

    invoke-static {v4}, Lcom/nubia/nucms/api/NuCmsApiUtils;->log(Ljava/lang/String;)V

    .line 223
    const-string v4, "0"

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 226
    .local v3, "location":Landroid/telephony/CellLocation;
    if-eqz v3, :cond_2

    .line 227
    instance-of v4, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 228
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 229
    .local v1, "gsm":Landroid/telephony/gsm/GsmCellLocation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    .end local v1    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "0"

    goto :goto_0

    .line 230
    :cond_3
    instance-of v4, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 231
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 232
    .local v0, "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0    # "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_4
    move-object v4, v2

    .line 235
    goto :goto_0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    const-string v1, "00:00:00:00:00:00"

    .line 315
    .local v1, "mac":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 316
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsApiUtils;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "temp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 318
    move-object v1, v2

    .line 328
    .end local v2    # "temp":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;)V

    .line 329
    return-object v1

    .line 321
    :cond_1
    const-string v4, "wifi"

    .line 322
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 323
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 324
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 325
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMcc(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    const/4 v3, 0x3

    .line 254
    const-string v0, ""

    .line 255
    .local v0, "mcc":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 256
    const-string v2, "telephony manager is null"

    invoke-static {v2}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;)V

    move-object v2, v0

    .line 263
    :goto_0
    return-object v2

    .line 259
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "operator":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "nul"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    const-string v2, "460"

    goto :goto_0
.end method

.method public static getPlatformVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    const-string v0, ""

    .line 133
    .local v0, "version":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1

    .line 134
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 138
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v0, "DEFAULT5_Z0_CN_ALL"

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get platform version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/nucms/api/NuCmsApiUtils;->log(Ljava/lang/String;)V

    .line 142
    return-object v0

    .line 136
    :cond_1
    const-string v1, "ro.build.internal.id"

    invoke-static {v1}, Lcom/nubia/nucms/api/NuCmsApiUtils;->systemPropGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWifiMacAddress()Ljava/lang/String;
    .locals 11

    .prologue
    .line 339
    :try_start_0
    const-string v1, "wlan0"

    .line 340
    .local v1, "ex":Ljava/lang/String;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 341
    .local v3, "interfaces":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 343
    .local v5, "iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 344
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 345
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    const/4 v7, 0x0

    new-array v6, v7, [B

    .line 347
    .local v6, "mac":[B
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    .line 348
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v6

    .line 350
    :cond_1
    if-nez v6, :cond_2

    .line 351
    const-string v7, ""

    .line 368
    .end local v3    # "interfaces":Ljava/util/ArrayList;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .end local v6    # "mac":[B
    :goto_0
    return-object v7

    .line 353
    .restart local v3    # "interfaces":Ljava/util/ArrayList;
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v5    # "iterator":Ljava/util/Iterator;
    .restart local v6    # "mac":[B
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_3

    .line 356
    const-string v7, "%02X:"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-byte v10, v6, v2

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 362
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 365
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "interfaces":Ljava/util/ArrayList;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "iterator":Ljava/util/Iterator;
    .end local v6    # "mac":[B
    :catch_0
    move-exception v7

    .line 368
    :cond_5
    const-string v7, ""

    goto :goto_0
.end method

.method private static hasSimCard(Landroid/telephony/TelephonyManager;)Z
    .locals 2
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 241
    .local v1, "simState":I
    const/4 v0, 0x1

    .line 242
    .local v0, "result":Z
    packed-switch v1, :pswitch_data_0

    .line 247
    :goto_0
    const/4 v0, 0x1

    .line 250
    return v0

    .line 245
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "NuCmsApiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApiUtils: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static methodMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    const-string v6, "NuCmsApiUtils"

    const-string v7, "use md5 method,but param is null,return"

    invoke-static {v6, v7}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v6, 0x0

    .line 68
    :goto_0
    return-object v6

    .line 50
    :cond_0
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 52
    .local v3, "md":Ljava/security/MessageDigest;
    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 56
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 57
    .local v4, "resBytes":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v1, "hexValue":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 59
    aget-byte v6, v4, v2

    and-int/lit16 v5, v6, 0xff

    .line 60
    .local v5, "val":I
    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 61
    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v5    # "val":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 66
    .end local v1    # "hexValue":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "resBytes":[B
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "NuCmsApiUtils"

    const-string v7, "no such algorithm:"

    invoke-static {v6, v7, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    const-string v6, ""

    goto :goto_0
.end method

.method public static systemPropGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "NuCmsApiUtils"

    const-string v4, " system pro get error"

    invoke-static {v3, v4, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 159
    const-string v3, ""

    goto :goto_0
.end method
