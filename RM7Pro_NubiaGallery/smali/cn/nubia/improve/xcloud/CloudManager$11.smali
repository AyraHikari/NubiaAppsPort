.class Lcn/nubia/improve/xcloud/CloudManager$11;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->rename(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$11;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V
    .locals 2

    .line 758
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 761
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 762
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$11;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$1900(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$11;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$1900(Lcn/nubia/improve/xcloud/CloudManager;)Lcn/nubia/improve/xcloud/CloudManager$RenameListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    .line 764
    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->getTarget()Ljava/lang/String;

    move-result-object p1

    .line 763
    invoke-interface {v0, p1}, Lcn/nubia/improve/xcloud/CloudManager$RenameListener;->renameDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 753
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/FromToRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$11;->onComplete(Lcn/nubia/cloud/storage/common/bean/FromToRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 771
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$11;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rename files failed. errorCode:"

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

    return-void
.end method
