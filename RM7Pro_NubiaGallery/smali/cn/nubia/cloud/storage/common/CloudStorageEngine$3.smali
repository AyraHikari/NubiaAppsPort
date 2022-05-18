.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->deleteFiles(Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$files:Ljava/util/List;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/util/List;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->val$files:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->val$files:Ljava/util/List;

    new-instance v2, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3$1;

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v2, p0, v3}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/storage/common/IStorageEngine;->deleteFiles(Ljava/util/List;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$3;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    const/16 v1, -0xbba

    const-string v2, "remote exception"

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
