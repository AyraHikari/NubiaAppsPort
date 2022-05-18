.class final Lcn/nubia/cloud/sync/common/IDMap$1;
.super Ljava/lang/Object;
.source "IDMap.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/IDMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/Jsonable$Creator",
        "<",
        "Lcn/nubia/cloud/sync/common/IDMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/sync/common/IDMap;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/cloud/sync/common/IDMap;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/common/IDMap;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    return-object v0
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/IDMap$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/sync/common/IDMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/cloud/sync/common/IDMap;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcn/nubia/cloud/sync/common/IDMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/IDMap$1;->newArray(I)[Lcn/nubia/cloud/sync/common/IDMap;

    move-result-object v0

    return-object v0
.end method
