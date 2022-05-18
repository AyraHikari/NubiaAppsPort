.class final Lcn/nubia/notepad/cloud/NotePadSyncItem$1;
.super Ljava/lang/Object;
.source "NotePadSyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/NotePadSyncItem;
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
        "Lcn/nubia/notepad/cloud/NotePadSyncItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 110
    :try_start_0
    new-instance v0, Lcn/nubia/notepad/cloud/NotePadSyncItem;

    invoke-direct {v0, p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/NotePadSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/notepad/cloud/NotePadSyncItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 119
    new-array v0, p1, [Lcn/nubia/notepad/cloud/NotePadSyncItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/NotePadSyncItem$1;->newArray(I)[Lcn/nubia/notepad/cloud/NotePadSyncItem;

    move-result-object v0

    return-object v0
.end method
