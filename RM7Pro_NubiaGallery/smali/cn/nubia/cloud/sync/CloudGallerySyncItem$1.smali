.class final Lcn/nubia/cloud/sync/CloudGallerySyncItem$1;
.super Ljava/lang/Object;
.source "CloudGallerySyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/CloudGallerySyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/Jsonable$Creator<",
        "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/sync/CloudGallerySyncItem;
    .locals 1

    .line 81
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/CloudGallerySyncItem;-><init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$1;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/sync/CloudGallerySyncItem;
    .locals 0

    .line 91
    new-array p1, p1, [Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$1;->newArray(I)[Lcn/nubia/cloud/sync/CloudGallerySyncItem;

    move-result-object p1

    return-object p1
.end method
