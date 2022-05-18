.class Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;
.super Ljava/lang/Object;
.source "NubiaCloudTaskService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;->onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;

.field final synthetic val$arg1:J

.field final synthetic val$arg2:J

.field final synthetic val$data:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->this$1:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;

    iput p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$state:I

    iput-wide p3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$arg1:J

    iput-wide p5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$arg2:J

    iput-object p7, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$data:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 684
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->this$1:Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;

    iget-object v1, v0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    iget v2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$state:I

    iget-wide v3, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$arg1:J

    iget-wide v5, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$arg2:J

    iget-object v7, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$2$1;->val$data:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-static/range {v1 .. v7}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->access$1000(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method
