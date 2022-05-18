.class final Lcn/nubia/cloud/utils/NBResponse$1;
.super Ljava/lang/Object;
.source "NBResponse.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/NBResponse;
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
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/utils/NBResponse;
    .locals 2
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p1}, Lcn/nubia/cloud/utils/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(Ljava/lang/String;)V

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
    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/NBResponse$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/utils/NBResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/cloud/utils/NBResponse;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Lcn/nubia/cloud/utils/NBResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/utils/NBResponse$1;->newArray(I)[Lcn/nubia/cloud/utils/NBResponse;

    move-result-object v0

    return-object v0
.end method
