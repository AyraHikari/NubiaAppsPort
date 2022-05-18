.class public Lcn/nubia/cloud/common/sync/recyclebin/GarbageData;
.super Lcn/nubia/cloud/common/sync/SyncItem;
.source "GarbageData.java"


# static fields
.field private static final KEY_DELETE_TIME:Ljava/lang/String; = "delete_time"


# instance fields
.field private deletedTime:J


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/sync/SyncItem;-><init>(Lcn/nubia/cloud/common/ParcelableJson;)V

    const-string v0, "delete_time"

    .line 14
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageData;->deletedTime:J

    return-void
.end method


# virtual methods
.method public getDeletedTime()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageData;->deletedTime:J

    return-wide v0
.end method

.method protected onToJson()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
