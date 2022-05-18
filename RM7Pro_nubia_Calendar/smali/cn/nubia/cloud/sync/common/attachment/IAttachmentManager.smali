.class public interface abstract Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager;
.super Ljava/lang/Object;
.source "IAttachmentManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/attachment/IAttachmentManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downloadAttachBySrverIds([JILcn/nubia/cloud/sync/common/attachment/IAttachCallback;)Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
