.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;
.super Ljava/lang/Object;
.source "CloudStorageEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine;->loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/utils/SimpleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;

.field final synthetic val$req:Lcn/nubia/cloud/storage/common/account/AuthReq;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine;Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    iput-object p2, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->val$req:Lcn/nubia/cloud/storage/common/account/AuthReq;

    iput-object p3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->this$0:Lcn/nubia/cloud/storage/common/CloudStorageEngine;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/CloudStorageEngine;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/storage/common/IStorageEngine;

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->val$req:Lcn/nubia/cloud/storage/common/account/AuthReq;

    new-instance v2, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1$1;

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v2, p0, v3}, Lcn/nubia/cloud/storage/common/CloudStorageEngine$1$1;-><init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$1;Lcn/nubia/cloud/utils/SimpleListener;)V

    invoke-interface {v0, v1, v2}, Lcn/nubia/cloud/storage/common/IStorageEngine;->loginPCS(Lcn/nubia/cloud/storage/common/account/AuthReq;Lcn/nubia/cloud/storage/common/IStorageEngineCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
