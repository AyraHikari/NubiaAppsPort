.class public Lcn/nubia/cloud/utils/task/AsyncClient;
.super Ljava/lang/Object;
.source "AsyncClient.java"


# instance fields
.field private final mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lcn/nubia/cloud/utils/task/NBExecutor;->newSinglePool()Lcn/nubia/cloud/utils/task/NBExecutor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/utils/task/AsyncClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/AsyncClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0}, Lcn/nubia/cloud/utils/task/NBExecutor;->shutdown()V

    return-void
.end method

.method protected summitTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcn/nubia/cloud/utils/task/AsyncClient;->mNBExecutor:Lcn/nubia/cloud/utils/task/NBExecutor;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/utils/task/NBExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
