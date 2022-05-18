.class Lcn/nubia/improve/xcloud/CloudManager$10;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->deletePhoto(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/storage/common/bean/SimpleRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;

.field final synthetic val$paths:Ljava/util/ArrayList;

.field final synthetic val$set:Lcn/nubia/cloud/ui/CloudAlbumSet;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/ArrayList;Lcn/nubia/cloud/ui/CloudAlbumSet;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->val$paths:Ljava/util/ArrayList;

    iput-object p3, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->val$set:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/SimpleRes;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 717
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/SimpleRes;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x795a

    if-ne v0, v1, :cond_2

    .line 719
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v1}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete files success. errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errorMsg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 720
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/SimpleRes;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {v1, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$400(Lcn/nubia/improve/xcloud/CloudManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->val$paths:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateDeleteColumnAfterDeleteCloudItem(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 722
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->val$set:Lcn/nubia/cloud/ui/CloudAlbumSet;

    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->val$paths:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->deleteAlbums(Ljava/util/ArrayList;)V

    .line 726
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 727
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;->deleteDone()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 712
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/SimpleRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$10;->onComplete(Lcn/nubia/cloud/storage/common/bean/SimpleRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 735
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete files failed. errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " errorMsg:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 737
    iget-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$10;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$500(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;->deleteError()V

    :cond_0
    return-void
.end method
