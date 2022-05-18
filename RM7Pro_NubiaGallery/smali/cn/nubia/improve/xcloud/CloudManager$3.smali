.class Lcn/nubia/improve/xcloud/CloudManager$3;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->createFolder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;

.field final synthetic val$folderPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->val$folderPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create folderPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->val$folderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",FileInfoRes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->val$folderPath:Ljava/lang/String;

    const-string v0, "/apps/nubia_cloud/\u7167\u7247"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    const-string v0, "/apps/nubia_cloud/\u7167\u7247/\u4e91\u76f8\u518c"

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->val$folderPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 265
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$3;->onComplete(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 279
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 282
    sget-object v1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 284
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFolder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager$3;->val$folderPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failed errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",errorMsg="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
