.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$hasDir:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$recursive:Z


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$key:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$recursive:Z

    iput-boolean p5, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$hasDir:Z

    iput-object p6, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 320
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$key:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$recursive:Z

    iget-boolean v5, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$hasDir:Z

    new-instance v6, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12$1;

    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v6, p0, v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface/range {v1 .. v6}, Lcn/nubia/cloud/storage/common/IStorageEngine;->search(Ljava/lang/String;Ljava/lang/String;ZZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$12;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    const/16 v1, -0xbba

    const-string v2, "remote exception"

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
