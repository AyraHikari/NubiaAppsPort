.class Lcn/nubia/improve/xcloud/NubiaCloudTaskService$1;
.super Ljava/lang/Object;
.source "NubiaCloudTaskService.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/NubiaCloudTaskService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Ljava/util/List<",
        "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/NubiaCloudTaskService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$1;->this$0:Lcn/nubia/improve/xcloud/NubiaCloudTaskService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/NubiaCloudTaskService$1;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileTaskList onComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nubiaCloudTaskService"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileTaskList failed. errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " errorMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "nubiaCloudTaskService"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
