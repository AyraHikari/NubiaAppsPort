.class public Lcn/nubia/cloud/accounts/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final KEY_DEVICE_INFO_IMEI:Ljava/lang/String; = "imei"

.field public static final KEY_DEVICE_INFO_MAKE:Ljava/lang/String; = "make"

.field public static final KEY_DEVICE_INFO_MEID:Ljava/lang/String; = "meid"

.field public static final KEY_DEVICE_INFO_PHONE_MODEL:Ljava/lang/String; = "phone_model"

.field public static final KEY_DEVICE_INFO_UUID:Ljava/lang/String; = "uuid"


# instance fields
.field public imei:Ljava/lang/String;

.field public make:Ljava/lang/String;

.field public meid:Ljava/lang/String;

.field public phone_model:Ljava/lang/String;

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 3

    .line 35
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    :try_start_0
    const-string v1, "make"

    .line 37
    iget-object v2, p0, Lcn/nubia/cloud/accounts/DeviceInfo;->make:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "phone_model"

    .line 38
    iget-object v2, p0, Lcn/nubia/cloud/accounts/DeviceInfo;->phone_model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    .line 39
    iget-object v2, p0, Lcn/nubia/cloud/accounts/DeviceInfo;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "meid"

    .line 40
    iget-object v2, p0, Lcn/nubia/cloud/accounts/DeviceInfo;->meid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    .line 41
    iget-object v2, p0, Lcn/nubia/cloud/accounts/DeviceInfo;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/DeviceInfo;->toJson()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/utils/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
