.class final Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;
.super Ljava/lang/Object;
.source "FileTransferTask.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
    .locals 2

    .line 207
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;-><init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;->createFromParcel(Landroid/os/Parcel;)Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
    .locals 0

    .line 212
    new-array p1, p1, [Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;->newArray(I)[Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    move-result-object p1

    return-object p1
.end method
