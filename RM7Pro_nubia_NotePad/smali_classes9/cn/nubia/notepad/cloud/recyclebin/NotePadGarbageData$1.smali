.class final Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData$1;
.super Ljava/lang/Object;
.source "NotePadGarbageData.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
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
        "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;

    invoke-direct {v0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    return-object v0
.end method

.method public bridge synthetic createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 78
    new-array v0, p1, [Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData$1;->newArray(I)[Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;

    move-result-object v0

    return-object v0
.end method
