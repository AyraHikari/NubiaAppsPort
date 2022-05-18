.class final Lcn/nubia/cloud/utils/ParcelableJson$1;
.super Ljava/lang/Object;
.source "ParcelableJson.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/ParcelableJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/cloud/utils/ParcelableJson;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    new-instance v1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 42
    new-array v0, p1, [Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson$1;->newArray(I)[Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v0

    return-object v0
.end method
