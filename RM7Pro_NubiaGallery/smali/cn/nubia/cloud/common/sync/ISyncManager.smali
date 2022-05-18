.class public interface abstract Lcn/nubia/cloud/common/sync/ISyncManager;
.super Ljava/lang/Object;
.source "ISyncManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/common/sync/ISyncManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract sync(Lcn/nubia/cloud/common/module/SyncModule;Lcn/nubia/cloud/common/sync/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncByModuleToken(Ljava/lang/String;Lcn/nubia/cloud/common/sync/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncByType(ILcn/nubia/cloud/common/sync/ISyncCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
