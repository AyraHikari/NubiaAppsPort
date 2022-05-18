.class public interface abstract Lcn/nubia/cloud/sync/common/SyncListener;
.super Ljava/lang/Object;
.source "SyncListener.java"


# virtual methods
.method public abstract onComplete(Lcn/nubia/cloud/sync/common/SyncStatus;)V
.end method

.method public abstract onException(ILjava/lang/String;)V
.end method

.method public abstract onProgress(Lcn/nubia/cloud/sync/common/SyncStatus;)V
.end method

.method public abstract progressInterval()J
.end method
