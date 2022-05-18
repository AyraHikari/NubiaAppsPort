.class public Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
.super Ljava/lang/Object;
.source "SummaryData.java"


# static fields
.field public static final CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/SummaryData;",
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

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData$1;

    invoke-direct {v0}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData$1;-><init>()V

    sput-object v0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "data_type"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mType:I

    .line 19
    const-string v0, "sync_version"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mServerVersion:J

    .line 20
    const-string v0, "total"

    invoke-virtual {p1, v0, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mCount:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mCount:I

    return v0
.end method

.method public getServerVersion()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mServerVersion:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->mType:I

    return v0
.end method
