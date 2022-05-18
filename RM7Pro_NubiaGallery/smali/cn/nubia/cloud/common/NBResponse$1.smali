.class Lcn/nubia/cloud/common/NBResponse$1;
.super Ljava/lang/Object;
.source "NBResponse.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/NBResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/Jsonable$Creator<",
        "Lcn/nubia/cloud/common/NBResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/NBResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcn/nubia/cloud/common/NBResponse;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/NBResponse;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/NBResponse$1;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/NBResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/common/NBResponse;
    .locals 0

    .line 43
    new-array p1, p1, [Lcn/nubia/cloud/common/NBResponse;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/NBResponse$1;->newArray(I)[Lcn/nubia/cloud/common/NBResponse;

    move-result-object p1

    return-object p1
.end method
