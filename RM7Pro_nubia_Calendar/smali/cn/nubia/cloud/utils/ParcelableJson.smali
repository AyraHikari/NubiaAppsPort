.class public Lcn/nubia/cloud/utils/ParcelableJson;
.super Lorg/json/JSONObject;
.source "ParcelableJson.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson$1;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/utils/ParcelableJson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getBinaryData(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "bValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVaule"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 63
    .end local p2    # "defaultVaule":I
    :cond_0
    :goto_0
    return p2

    .line 60
    .restart local p2    # "defaultVaule":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVaule"    # J

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 73
    .end local p2    # "defaultVaule":J
    :cond_0
    :goto_0
    return-wide p2

    .line 70
    .restart local p2    # "defaultVaule":J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    invoke-super {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBinaryData(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binaryData"    # [B

    .prologue
    .line 148
    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "encodeData":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->putData(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public putCollection(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<+Lcn/nubia/cloud/utils/ParcelableJson;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "ignored":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vaule"    # I

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ignored":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vaule"    # J

    .prologue
    .line 114
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ignored":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vaule"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 130
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ignored":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vaule"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ignored":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcn/nubia/cloud/utils/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
