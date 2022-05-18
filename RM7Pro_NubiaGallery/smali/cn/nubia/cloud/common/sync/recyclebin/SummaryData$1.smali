.class Lcn/nubia/cloud/common/sync/recyclebin/SummaryData$1;
.super Ljava/lang/Object;
.source "SummaryData.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/Jsonable$Creator<",
        "Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;",
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
.method public createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;

    invoke-direct {v0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;-><init>(Lcn/nubia/cloud/common/ParcelableJson;)V

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
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData$1;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;
    .locals 0

    .line 44
    new-array p1, p1, [Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData$1;->newArray(I)[Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;

    move-result-object p1

    return-object p1
.end method
