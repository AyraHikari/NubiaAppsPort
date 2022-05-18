.class public interface abstract Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback;
.super Ljava/lang/Object;
.source "IStorageEngineSetupCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IStorageEngineSetupCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onException(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setupFileDescriptor(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
