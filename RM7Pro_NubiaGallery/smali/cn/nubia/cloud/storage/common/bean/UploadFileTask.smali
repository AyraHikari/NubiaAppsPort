.class public Lcn/nubia/cloud/storage/common/bean/UploadFileTask;
.super Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
.source "UploadFileTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;I)V

    return-void
.end method
