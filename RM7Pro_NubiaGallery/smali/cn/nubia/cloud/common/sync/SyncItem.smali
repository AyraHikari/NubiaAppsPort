.class public abstract Lcn/nubia/cloud/common/sync/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable;


# static fields
.field public static final DELETED:Ljava/lang/String; = "deleted"

.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final LOCAL_ID:Ljava/lang/String; = "local_id"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"


# instance fields
.field private mContentJson:Lcn/nubia/cloud/common/ParcelableJson;

.field private mDeleted:I

.field private mLocalID:J

.field private mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

.field private mServerID:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mLocalID:J

    .line 25
    iput-wide p3, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mServerID:J

    .line 26
    iput p5, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mDeleted:I

    .line 28
    :try_start_0
    new-instance v0, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "local_id"

    .line 29
    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string p2, "server_id"

    invoke-virtual {p1, p2, p3, p4}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string p2, "deleted"

    invoke-virtual {p1, p2, p5}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v0, "local_id"

    .line 39
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v0, "server_id"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mServerID:J

    .line 43
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const/4 v0, 0x0

    const-string v1, "deleted"

    invoke-virtual {p1, v1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mDeleted:I

    .line 44
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncItem;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 45
    invoke-direct {p0}, Lcn/nubia/cloud/common/sync/SyncItem;->initContent()V

    goto :goto_0

    .line 47
    :cond_1
    new-instance p1, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {p1}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mContentJson:Lcn/nubia/cloud/common/ParcelableJson;

    :goto_0
    return-void
.end method

.method private initContent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/common/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 56
    new-instance v0, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/common/ParcelableJson;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mContentJson:Lcn/nubia/cloud/common/ParcelableJson;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mContentJson:Lcn/nubia/cloud/common/ParcelableJson;

    :goto_0
    return-void
.end method


# virtual methods
.method protected final getContent()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mContentJson:Lcn/nubia/cloud/common/ParcelableJson;

    return-object v0
.end method

.method public getLocalID()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mLocalID:J

    return-wide v0
.end method

.method public getServerID()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mServerID:J

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/common/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public isDeleted()Z
    .locals 2

    .line 71
    iget v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mDeleted:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onToJson()Lcn/nubia/cloud/common/ParcelableJson;
.end method

.method public putData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lcn/nubia/cloud/common/ParcelableJson;->putData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toJson()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 3

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncItem;->onToJson()Lcn/nubia/cloud/common/ParcelableJson;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/common/ParcelableJson;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcn/nubia/cloud/common/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    .line 84
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    return-object v0
.end method
