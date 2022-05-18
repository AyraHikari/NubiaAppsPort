.class public abstract Lcn/nubia/improve/category/CategoryTask;
.super Ljava/lang/Thread;
.source "CategoryTask.java"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryTask;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/improve/category/CategoryTask$1;

    invoke-direct {v1, p0}, Lcn/nubia/improve/category/CategoryTask$1;-><init>(Lcn/nubia/improve/category/CategoryTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public excute()V
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryTask;->onStart()V

    .line 18
    invoke-virtual {p0}, Lcn/nubia/improve/category/CategoryTask;->doWork()V

    return-void
.end method

.method public abstract onDoInBackground()V
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
