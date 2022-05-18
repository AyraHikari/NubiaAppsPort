.class public abstract Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;
.super Lcn/nubia/cloud/sync/common/SyncItem;
.source "GarbageData.java"


# static fields
.field private static final KEY_DELETE_TIME:Ljava/lang/String; = "delete_time"


# instance fields
.field private deletedTime:J


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 2
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/SyncItem;-><init>(Lcn/nubia/cloud/utils/ParcelableJson;)V

    .line 14
    const-string v0, "delete_time"

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;->deletedTime:J

    .line 15
    return-void
.end method


# virtual methods
.method public getDeletedTime()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/recyclebin/GarbageData;->deletedTime:J

    return-wide v0
.end method

.method public getModuleToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onToJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
