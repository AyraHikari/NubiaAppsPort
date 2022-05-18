.class final Lcn/nubia/cloud/sync/common/attachment/AttachmentData$1;
.super Ljava/lang/Object;
.source "AttachmentData.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
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
        "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 61
    new-instance v0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

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
    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData$1;->newArray(I)[Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    move-result-object v0

    return-object v0
.end method
