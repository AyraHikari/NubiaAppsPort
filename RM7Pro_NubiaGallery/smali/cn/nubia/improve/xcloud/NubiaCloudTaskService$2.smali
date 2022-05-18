.class Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;
.super Ljava/lang/Object;
.source "NubiaCloudTaskService.java"

# interfaces
.implements Lcn/nubia/cloud/utils/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/ProgressListener<",
        "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 11

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updownloadFile_onStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CurrentSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v4, p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TotalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide v6, p4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/utils/LogUtil;->d(Ljava/lang/String;)V

    move-object v0, p0

    .line 681
    iget-object v1, v0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-static {v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$1100(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;-><init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onStatus(IJJLjava/lang/Object;)V
    .locals 0

    .line 669
    check-cast p6, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-virtual/range {p0 .. p6}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;->onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method

.method public progressInterval()J
    .locals 2

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method
