.class Lcn/nubia/cloud/common/sync/IDMap$1;
.super Ljava/lang/Object;
.source "IDMap.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/IDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/Jsonable$Creator<",
        "Lcn/nubia/cloud/common/sync/IDMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/sync/IDMap;
    .locals 1

    .line 52
    new-instance v0, Lcn/nubia/cloud/common/sync/IDMap;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/sync/IDMap;-><init>(Lcn/nubia/cloud/common/ParcelableJson;)V

    return-object v0
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/IDMap$1;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/sync/IDMap;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/common/sync/IDMap;
    .locals 0

    .line 57
    new-array p1, p1, [Lcn/nubia/cloud/common/sync/IDMap;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/IDMap$1;->newArray(I)[Lcn/nubia/cloud/common/sync/IDMap;

    move-result-object p1

    return-object p1
.end method
