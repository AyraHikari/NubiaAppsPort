.class public Lcn/nubia/cloud/sync/common/IDMap;
.super Ljava/lang/Object;
.source "IDMap.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# static fields
.field public static CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/cloud/sync/common/IDMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

.field private localID:J

.field private serverID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcn/nubia/cloud/sync/common/IDMap$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/IDMap$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/IDMap;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5
    .param p1, "localID"    # J
    .param p3, "serverID"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->localID:J

    .line 10
    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->serverID:J

    .line 14
    iput-wide p1, p0, Lcn/nubia/cloud/sync/common/IDMap;->localID:J

    .line 15
    iput-wide p3, p0, Lcn/nubia/cloud/sync/common/IDMap;->serverID:J

    .line 17
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 18
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "local_id"

    invoke-virtual {v1, v2, p1, p2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "server_id"

    invoke-virtual {v1, v2, p3, p4}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 4
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->localID:J

    .line 10
    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->serverID:J

    .line 26
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 28
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "local_id"

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->localID:J

    .line 29
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "server_id"

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/cloud/sync/common/IDMap;->serverID:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getLocalID()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/IDMap;->localID:J

    return-wide v0
.end method

.method public getServerID()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/IDMap;->serverID:J

    return-wide v0
.end method

.method public toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/IDMap;->jsonContent:Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v0
.end method
