.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$showDirSize:Z


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Ljava/lang/String;ZLcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$file:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$showDirSize:Z

    iput-object p4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 176
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$file:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$showDirSize:Z

    new-instance v3, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5$1;

    iget-object v4, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v3, p0, v4}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/IStorageEngine;->getFileMeta(Ljava/lang/String;ZLcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$5;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    const/16 v1, -0xbba

    const-string v2, "remote exception"

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/utils/SimpleListener;->onException(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
