.class public abstract Landroid/support/v4/app/JobIntentService;
.super Landroid/app/Service;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$CommandProcessor;,
        Landroid/support/v4/app/JobIntentService$CompatWorkItem;,
        Landroid/support/v4/app/JobIntentService$GenericWorkItem;,
        Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;,
        Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$CompatJobEngine;,
        Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Landroid/support/v4/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

.field mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "cls"    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "jobId"    # I
    .param p3, "work"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 471
    if-nez p3, :cond_0

    .line 472
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "work must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_0
    sget-object v2, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, p2}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Ljava/lang/Class;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    .line 476
    .local v0, "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    invoke-virtual {v0, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 477
    invoke-virtual {v0, p3}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 478
    monitor-exit v2

    .line 479
    return-void

    .line 478
    .end local v0    # "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Ljava/lang/Class;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "hasJobId"    # Z
    .param p3, "jobId"    # I

    .prologue
    .line 482
    sget-object v1, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    .line 483
    .local v0, "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    if-nez v0, :cond_1

    .line 484
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    if-nez p2, :cond_0

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t be here without a job id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 488
    :cond_0
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;

    .end local v0    # "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    invoke-direct {v0, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 492
    .restart local v0    # "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    :goto_0
    sget-object v1, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_1
    return-object v0

    .line 490
    :cond_2
    new-instance v0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;

    .end local v0    # "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    invoke-direct {v0, p0, p1}, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "we":Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    goto :goto_0
.end method


# virtual methods
.method checkForMoreCompatWorkLocked()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked()V

    .line 543
    :cond_0
    return-void
.end method

.method dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 550
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 551
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    monitor-exit v1

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 553
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method ensureProcessorRunningLocked()V
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Landroid/support/v4/app/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$CommandProcessor;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    .line 533
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 535
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 438
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {v1}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 443
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 399
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 402
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 403
    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    iput-object v3, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, v2, v2}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Ljava/lang/Class;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    .line 407
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceCreated()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 450
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceDestroyed()V

    .line 453
    :cond_0
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 417
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v0}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/v4/app/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_0

    .end local p1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-direct {v2, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$CompatWorkItem;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked()V

    .line 424
    monitor-exit v1

    .line 425
    const/4 v0, 0x3

    .line 428
    :goto_1
    return v0

    .line 421
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .end local p1    # "intent":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 428
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x1

    return v0
.end method
