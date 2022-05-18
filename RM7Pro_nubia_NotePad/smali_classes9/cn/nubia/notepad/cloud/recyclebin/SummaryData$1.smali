.class final Lcn/nubia/notepad/cloud/recyclebin/SummaryData$1;
.super Ljava/lang/Object;
.source "SummaryData.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
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
        "Lcn/nubia/notepad/cloud/recyclebin/SummaryData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
    .locals 1
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;

    invoke-direct {v0, p1}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

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
    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData$1;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/notepad/cloud/recyclebin/SummaryData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 45
    new-array v0, p1, [Lcn/nubia/notepad/cloud/recyclebin/SummaryData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData$1;->newArray(I)[Lcn/nubia/notepad/cloud/recyclebin/SummaryData;

    move-result-object v0

    return-object v0
.end method
