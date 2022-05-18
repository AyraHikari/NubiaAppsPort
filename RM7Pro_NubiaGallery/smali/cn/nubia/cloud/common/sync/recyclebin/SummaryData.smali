.class public Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;
.super Ljava/lang/Object;
.source "SummaryData.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;",
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

.field private mType:Lcn/nubia/cloud/common/module/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData$1;

    invoke-direct {v0}, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData$1;-><init>()V

    .line 34
    sput-object v0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "data_type"

    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/common/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/common/module/SyncType;->valueOf(I)Lcn/nubia/cloud/common/module/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mType:Lcn/nubia/cloud/common/module/SyncType;

    const-string v0, "sync_version"

    .line 18
    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/common/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mServerVersion:J

    const-string v0, "total"

    .line 19
    invoke-virtual {p1, v0, v1}, Lcn/nubia/cloud/common/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 31
    iget v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mCount:I

    return v0
.end method

.method public getServerVersion()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mServerVersion:J

    return-wide v0
.end method

.method public getType()Lcn/nubia/cloud/common/module/SyncType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/SummaryData;->mType:Lcn/nubia/cloud/common/module/SyncType;

    return-object v0
.end method
