.class Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;
.super Ljava/lang/Object;
.source "NubiaCloudTaskListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->onStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

.field final synthetic val$arg3:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;->val$arg3:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;

    iget-object v1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener$1;->val$arg3:Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskListener;->onGetTaskStatus(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V

    return-void
.end method
