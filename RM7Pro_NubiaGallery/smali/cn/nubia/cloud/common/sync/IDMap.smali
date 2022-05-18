.class public Lcn/nubia/cloud/common/sync/IDMap;
.super Ljava/lang/Object;
.source "IDMap.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable;


# static fields
.field public static CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "Lcn/nubia/cloud/common/sync/IDMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

.field private localID:J

.field private serverID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcn/nubia/cloud/common/sync/IDMap$1;

    invoke-direct {v0}, Lcn/nubia/cloud/common/sync/IDMap$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/common/sync/IDMap;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->localID:J

    .line 10
    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->serverID:J

    .line 14
    iput-wide p1, p0, Lcn/nubia/cloud/common/sync/IDMap;->localID:J

    .line 15
    iput-wide p3, p0, Lcn/nubia/cloud/common/sync/IDMap;->serverID:J

    .line 17
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "local_id"

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/IDMap;->jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

    const-string p2, "server_id"

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->localID:J

    .line 10
    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->serverID:J

    .line 26
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/IDMap;->jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

    :try_start_0
    const-string v0, "local_id"

    .line 28
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->localID:J

    .line 29
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/IDMap;->jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v0, "server_id"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->serverID:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLocalID()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->localID:J

    return-wide v0
.end method

.method public getServerID()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->serverID:J

    return-wide v0
.end method

.method public toJson()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/IDMap;->jsonContent:Lcn/nubia/cloud/common/ParcelableJson;

    return-object v0
.end method
