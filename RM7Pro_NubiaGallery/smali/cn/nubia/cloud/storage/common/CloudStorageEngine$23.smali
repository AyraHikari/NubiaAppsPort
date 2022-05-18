.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;Lcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$fileInfo:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$fileInfo:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    iput-object p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object p4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 543
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$fileInfo:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-virtual {v2}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->intValue()I

    move-result v2

    new-instance v3, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23$1;

    iget-object v4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v3, p0, v4}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/IStorageEngine;->cloudMatch(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;ILcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    const/16 v1, -0xbba

    const-string v2, "remote exception"

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
