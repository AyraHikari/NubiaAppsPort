.class public Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskProxy"
.end annotation


# instance fields
.field private mEntry:Lcn/nubia/gallery3d/data/DownloadCache$Entry;

.field private mIsCancelled:Z

.field private mTask:Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;
    .locals 0

    .line 335
    iget-object p0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;)Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;
    .locals 0

    .line 335
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mTask:Lcn/nubia/gallery3d/data/DownloadCache$DownloadTask;

    return-object p1
.end method

.method static synthetic access$702(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;Z)Z
    .locals 0

    .line 335
    iput-boolean p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized get(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Lcn/nubia/gallery3d/data/DownloadCache$Entry;
    .locals 3

    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy$1;-><init>(Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;)V

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 356
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcn/nubia/gallery3d/data/DownloadCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 358
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DownloadCache"

    const-string v2, "ignore interrupt"

    .line 360
    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    .line 364
    iget-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcn/nubia/gallery3d/data/DownloadCache$Entry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setResult(Lcn/nubia/gallery3d/data/DownloadCache$Entry;)V
    .locals 1

    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mIsCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadCache$TaskProxy;->mEntry:Lcn/nubia/gallery3d/data/DownloadCache$Entry;

    .line 343
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
