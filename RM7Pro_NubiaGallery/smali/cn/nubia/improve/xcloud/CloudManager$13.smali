.class Lcn/nubia/improve/xcloud/CloudManager$13;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->checkNames(Ljava/util/ArrayList;Ljava/util/HashMap;)V
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

.field final synthetic val$cloudPathList:Ljava/util/ArrayList;

.field final synthetic val$fileName:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->val$fileName:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->val$cloudPathList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 8

    .line 869
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->list:Ljava/util/List;

    .line 870
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 872
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    .line 873
    iget-object v0, v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    .line 874
    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v1}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "repeatFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v1, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->val$fileName:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 878
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v3, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->val$fileName:Ljava/util/HashMap;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcn/nubia/improve/xcloud/CloudManager;->access$2000(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/HashMap;JZZ)V

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 865
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$13;->onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 883
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager$13;->val$cloudPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "files checkName failed errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",errorMsg:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
