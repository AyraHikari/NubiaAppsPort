.class public Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;
.super Ljava/lang/Object;
.source "SummaryData.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA_TYPE:Ljava/lang/String; = "data_type"

.field private static final KEY_SYNC_VERSION:Ljava/lang/String; = "sync_version"

.field private static final KEY_TOTAL:Ljava/lang/String; = "total"


# instance fields
.field private mCount:I

.field private mServerVersion:J

.field private mType:Lcn/nubia/cloud/service/common/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 3
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "data_type"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/service/common/SyncType;->valueOf(I)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mType:Lcn/nubia/cloud/service/common/SyncType;

    .line 18
    const-string v0, "sync_version"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mServerVersion:J

    .line 19
    const-string v0, "total"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mCount:I

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mCount:I

    return v0
.end method

.method public getServerVersion()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mServerVersion:J

    return-wide v0
.end method

.method public getType()Lcn/nubia/cloud/service/common/SyncType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/SummaryData;->mType:Lcn/nubia/cloud/service/common/SyncType;

    return-object v0
.end method
