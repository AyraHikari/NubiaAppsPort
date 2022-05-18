.class Lcn/nubia/cloud/utils/ParcelableJson$1;
.super Ljava/lang/Object;
.source "ParcelableJson.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/ParcelableJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/cloud/utils/ParcelableJson;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .line 33
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    new-instance p1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {p1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 0

    .line 42
    new-array p1, p1, [Lcn/nubia/cloud/utils/ParcelableJson;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/ParcelableJson$1;->newArray(I)[Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object p1

    return-object p1
.end method
