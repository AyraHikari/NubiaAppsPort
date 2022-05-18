.class public Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
.super Ljava/lang/Object;
.source "AttachmentData.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "CachePath"

.field private static final CLOUD_PATH:Ljava/lang/String; = "Cloudpath"

.field public static CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/cloud/sync/common/attachment/AttachmentData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY:Ljava/lang/String; = "Key"

.field private static final SERVER_ID:Ljava/lang/String; = "ServerID"


# instance fields
.field private mCachePath:Ljava/lang/String;

.field private mCloudPath:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mServerId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "cloudPath"    # Ljava/lang/String;
    .param p5, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mServerId:J

    .line 27
    iput-object p3, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mKey:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCachePath:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 4
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "ServerID"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mServerId:J

    .line 20
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mKey:Ljava/lang/String;

    .line 21
    const-string v0, "Cloudpath"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    .line 22
    const-string v0, "CachePath"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCachePath:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    instance-of v3, p1, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 89
    check-cast v0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    .line 90
    .local v0, "data":Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "data":Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    :cond_2
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mServerId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 51
    .local v0, "json":Lcn/nubia/cloud/utils/ParcelableJson;
    const-string v1, "ServerID"

    iget-wide v2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mServerId:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string v1, "Key"

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "Cloudpath"

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v1, "CachePath"

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mServerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mServerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCloudPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCloudPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCachePath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->mCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
