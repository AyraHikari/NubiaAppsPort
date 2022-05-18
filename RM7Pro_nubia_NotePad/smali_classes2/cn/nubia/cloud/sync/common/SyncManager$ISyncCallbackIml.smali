.class Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;
.super Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISyncCallbackIml"
.end annotation


# instance fields
.field private final mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/sync/common/SyncListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/cloud/sync/common/SyncListener;

    .prologue
    .line 151
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/ISyncCallback$Stub;-><init>()V

    .line 152
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;

    .line 153
    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/sync/common/SyncStatus;)V
    .locals 1
    .param p1, "status"    # Lcn/nubia/cloud/sync/common/SyncStatus;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/sync/common/SyncListener;->onComplete(Lcn/nubia/cloud/sync/common/SyncStatus;)V

    .line 170
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/sync/common/SyncListener;->onException(ILjava/lang/String;)V

    .line 165
    return-void
.end method

.method public onProgress(Lcn/nubia/cloud/sync/common/SyncStatus;)V
    .locals 1
    .param p1, "status"    # Lcn/nubia/cloud/sync/common/SyncStatus;

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/sync/common/SyncListener;->onProgress(Lcn/nubia/cloud/sync/common/SyncStatus;)V

    .line 161
    return-void
.end method

.method public progressInterval()J
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncManager$ISyncCallbackIml;->mSyncListener:Lcn/nubia/cloud/sync/common/SyncListener;

    invoke-interface {v0}, Lcn/nubia/cloud/sync/common/SyncListener;->progressInterval()J

    move-result-wide v0

    return-wide v0
.end method
