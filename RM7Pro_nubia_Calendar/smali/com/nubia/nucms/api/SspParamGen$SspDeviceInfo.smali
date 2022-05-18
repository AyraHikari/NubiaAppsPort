.class public Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;
.super Ljava/lang/Object;
.source "SspParamGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/api/SspParamGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SspDeviceInfo"
.end annotation


# static fields
.field public static final FEILD_ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final FEILD_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final FEILD_DEVICE:Ljava/lang/String; = "device"

.field public static final FEILD_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field public static final FEILD_DPI:Ljava/lang/String; = "dpi"

.field public static final FEILD_H:Ljava/lang/String; = "h"

.field public static final FEILD_IDFA:Ljava/lang/String; = "idfa"

.field public static final FEILD_IMEI:Ljava/lang/String; = "imei"

.field public static final FEILD_IMEI_MD5:Ljava/lang/String; = "imei_md5"

.field public static final FEILD_MAC:Ljava/lang/String; = "mac"

.field public static final FEILD_MODEL:Ljava/lang/String; = "model"

.field public static final FEILD_OS_LEVEL:Ljava/lang/String; = "os_level"

.field public static final FEILD_OS_TYPE:Ljava/lang/String; = "os_type"

.field public static final FEILD_OS_VERSION:Ljava/lang/String; = "os_version"

.field public static final FEILD_SDK_VERSION:Ljava/lang/String; = "svr"

.field public static final FEILD_SSP_DEVICE_ID:Ljava/lang/String; = "ssp_device_id"

.field public static final FEILD_SSP_USER_ID:Ljava/lang/String; = "cuid"

.field public static final FEILD_VENDOR:Ljava/lang/String; = "vendor"

.field public static final FEILD_W:Ljava/lang/String; = "w"

.field private static final TAG:Ljava/lang/String; = "SspDeviceInfo"

.field public static final VALUE_DEVICE_TYPE_MOBILE_PHONE:I = 0x4

.field public static final VALUE_DEVICE_TYPE_PAD:I = 0x5

.field public static final VALUE_OS_TYPE_ANDROID:Ljava/lang/String; = "Android"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    .line 224
    return-void
.end method

.method public static start()Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;

    invoke-direct {v0}, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appendParam(Ljava/lang/String;I)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-object p0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SspDeviceInfo"

    const-string v2, "ssp device info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public appendParam(Ljava/lang/String;Ljava/lang/String;)Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-object p0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SspDeviceInfo"

    const-string v2, "ssp device info appendParam error"

    invoke-static {v1, v2, v0}, Lcom/nubia/nucms/utils/NuCmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public end()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "ssp device info field is null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nubia/nucms/api/SspParamGen$SspDeviceInfo;->jsonObject:Lorg/json/JSONObject;

    .line 255
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
