.class public interface abstract Lcn/nubia/cloud/storage/common/IFileTaskCallback;
.super Ljava/lang/Object;
.source "IFileTaskCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;
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

.method public abstract onFileTaskStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract progressInterval()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
