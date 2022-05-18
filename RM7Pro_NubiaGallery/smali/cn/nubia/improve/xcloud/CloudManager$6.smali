.class Lcn/nubia/improve/xcloud/CloudManager$6;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->loadIcon(Ljava/lang/String;ILcn/nubia/improve/xcloud/CloudManager$LoadImageListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/xcloud/CloudManager;

.field final synthetic val$listener:Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;Ljava/lang/String;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    iput-object p2, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->val$listener:Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;

    iput-object p3, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->val$listener:Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;

    if-eqz v0, :cond_0

    .line 601
    invoke-interface {v0, p1}, Lcn/nubia/improve/xcloud/CloudManager$LoadImageListener;->loadIconCompleted(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 596
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$6;->onComplete(Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 607
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/improve/xcloud/CloudManager$6;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thumbnail failed. errorCode:"

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
