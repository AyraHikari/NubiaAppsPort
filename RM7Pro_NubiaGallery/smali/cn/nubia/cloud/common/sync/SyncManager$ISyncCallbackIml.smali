.class Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;
.super Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/sync/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISyncCallbackIml"
.end annotation


# instance fields
.field private final mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/sync/SyncListener;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcn/nubia/cloud/common/sync/ISyncCallback$Stub;-><init>()V

    .line 61
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/common/sync/SyncStatus;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/sync/SyncListener;->onComplete(Lcn/nubia/cloud/common/sync/SyncStatus;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/common/sync/SyncListener;->onException(ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(Lcn/nubia/cloud/common/sync/SyncStatus;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/common/sync/SyncListener;->onProgress(Lcn/nubia/cloud/common/sync/SyncStatus;)V

    return-void
.end method

.method public progressInterval()J
    .locals 2

    .line 65
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/common/sync/SyncListener;

    invoke-interface {v0}, Lcn/nubia/cloud/common/sync/SyncListener;->progressInterval()J

    move-result-wide v0

    return-wide v0
.end method
