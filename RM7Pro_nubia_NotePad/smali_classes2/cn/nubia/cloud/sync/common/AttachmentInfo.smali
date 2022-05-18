.class public Lcn/nubia/cloud/sync/common/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    }
.end annotation


# static fields
.field public static CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mServerId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcn/nubia/cloud/sync/common/AttachmentInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/common/AttachmentInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 9
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mItemInfos:Ljava/util/List;

    .line 41
    :try_start_0
    const-string v4, "server_id"

    invoke-virtual {p1, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mServerId:J

    .line 42
    const-string v4, "attachments"

    invoke-virtual {p1, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 43
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 44
    new-instance v3, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "item":Lcn/nubia/cloud/utils/ParcelableJson;
    iget-object v4, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mItemInfos:Ljava/util/List;

    new-instance v5, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    const-string v6, "key"

    invoke-virtual {v3, v6}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "local_path"

    invoke-virtual {v3, v7}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cache_path"

    invoke-virtual {v3, v8}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "item":Lcn/nubia/cloud/utils/ParcelableJson;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mItemInfos:Ljava/util/List;

    return-object v0
.end method

.method public getServerId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mServerId:J

    return-wide v0
.end method

.method public setmItemInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "mItemInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;>;"
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mItemInfos:Ljava/util/List;

    .line 36
    return-void
.end method

.method public setmServerId(J)V
    .locals 1
    .param p1, "mServerId"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mServerId:J

    .line 32
    return-void
.end method

.method public toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v4, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v4}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 56
    .local v4, "json":Lcn/nubia/cloud/utils/ParcelableJson;
    const-string v5, "server_id"

    iget-wide v6, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mServerId:J

    invoke-virtual {v4, v5, v6, v7}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo;->mItemInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;

    .line 59
    .local v2, "info":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    new-instance v3, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v3}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 60
    .local v3, "item":Lcn/nubia/cloud/utils/ParcelableJson;
    const-string v5, "key"

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v5, "local_path"

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmLocalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v5, "cache_path"

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->getmCachePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 65
    .end local v2    # "info":Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
    .end local v3    # "item":Lcn/nubia/cloud/utils/ParcelableJson;
    :cond_0
    const-string v5, "attachments"

    invoke-virtual {v4, v5, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    return-object v4
.end method
