.class Lcn/nubia/improve/xcloud/CloudManager$2;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/storage/common/bean/ListInfoRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GetFileListListener listInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$708(Lcn/nubia/improve/xcloud/CloudManager;)I

    .line 236
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->val$path:Ljava/lang/String;

    const-string v1, "/apps/nubia_cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/apps/nubia_cloud/\u7167\u7247"

    if-eqz v0, :cond_0

    .line 237
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {p1, v1}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    const-string v0, "/apps/nubia_cloud/\u7167\u7247/\u4e91\u76f8\u518c"

    invoke-virtual {p1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->list(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->list:Ljava/util/List;

    .line 242
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0, p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$800(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 230
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$2;->onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetFileList failed errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$708(Lcn/nubia/improve/xcloud/CloudManager;)I

    const/16 v0, -0xbb8

    if-ne p1, v0, :cond_0

    .line 252
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$2;->val$path:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/CloudManager;->access$900(Lcn/nubia/improve/xcloud/CloudManager;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_0
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 255
    sget-object p1, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    const/16 v0, 0x6b

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 257
    sget-object p2, Lcn/nubia/improve/xcloud/CloudManager;->mMyHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
