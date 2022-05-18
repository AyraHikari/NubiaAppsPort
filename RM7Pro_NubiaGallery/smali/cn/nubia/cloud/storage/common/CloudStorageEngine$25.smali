.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$fileTask:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/ProgressListener;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->val$fileTask:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    iput-object p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->val$listener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 578
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->val$fileTask:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$25;->val$listener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-static {v2, v3}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->access$000(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/utils/ProgressListener;)Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/storage/common/IStorageEngine;->restartTask(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;Lcn/nubia/cloud/storage/common/IFileTaskCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
