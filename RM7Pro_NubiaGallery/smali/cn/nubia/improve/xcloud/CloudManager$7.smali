.class Lcn/nubia/improve/xcloud/CloudManager$7;
.super Ljava/lang/Object;
.source "CloudManager.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/xcloud/CloudManager;->movePhotos(Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcn/nubia/improve/xcloud/CloudManager;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcn/nubia/improve/xcloud/CloudManager$7;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V
    .locals 3

    .line 623
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$7;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePhotos listInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;->list:Ljava/util/List;

    .line 625
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$7;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0, p1}, Lcn/nubia/improve/xcloud/CloudManager;->access$1700(Lcn/nubia/improve/xcloud/CloudManager;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 619
    check-cast p1, Lcn/nubia/cloud/storage/common/bean/ListInfoRes;

    invoke-virtual {p0, p1}, Lcn/nubia/improve/xcloud/CloudManager$7;->onComplete(Lcn/nubia/cloud/storage/common/bean/ListInfoRes;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcn/nubia/improve/xcloud/CloudManager$7;->this$0:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->access$600(Lcn/nubia/improve/xcloud/CloudManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movePhotos errorCode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",errorMsg ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
