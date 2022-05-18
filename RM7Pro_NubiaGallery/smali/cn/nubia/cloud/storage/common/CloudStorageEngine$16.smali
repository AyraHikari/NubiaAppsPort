.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getCloudDownloadTaskList(IIIZLcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$asc:I

.field final synthetic val$limit:I

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$needTaskInfo:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;IIIZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$start:I

    iput p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$limit:I

    iput p4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$asc:I

    iput-boolean p5, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$needTaskInfo:Z

    iput-object p6, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 405
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget v2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$start:I

    iget v3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$limit:I

    iget v4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$asc:I

    iget-boolean v5, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$needTaskInfo:Z

    new-instance v6, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16$1;

    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v6, p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface/range {v1 .. v6}, Lcn/nubia/cloud/storage/common/IStorageEngine;->getCloudDownloadTaskList(IIIZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$16;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    const/16 v1, -0xbba

    const-string v2, "remote exception"

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
