.class Lcn/nubia/cloud/storage/common/CloudStorageEngine$23$1;
.super Lcn/nubia/cloud/storage/common/StorageEngineCallback;
.source "CloudStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23$1;->this$1:Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;

    invoke-direct {p0, p2}, Lcn/nubia/cloud/storage/common/StorageEngineCallback;-><init>(Lcn/nubia/cloud/utils/SimpleListener;)V

    return-void
.end method


# virtual methods
.method public onCloudMatch(Lcn/nubia/cloud/storage/common/bean/FileInfoRes;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23$1;->this$1:Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;

    iget-object v0, v0, Lcn/nubia/cloud/storage/common/CloudStorageEngine$23;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-interface {v0, p1}, Lcn/nubia/cloud/utils/SimpleListener;->onComplete(Ljava/lang/Object;)V

    return-void
.end method
