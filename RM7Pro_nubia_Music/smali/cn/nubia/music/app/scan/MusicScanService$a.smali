.class Lcn/nubia/music/app/scan/MusicScanService$a;
.super Ljava/lang/Thread;
.source "MusicScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/scan/MusicScanService;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanService$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcn/nubia/music/app/scan/MusicScanService$b;


# direct methods
.method private constructor <init>(Lcn/nubia/music/app/scan/MusicScanService;)V
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->a:Lcn/nubia/music/app/scan/MusicScanService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->b:Z

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->d:Lcn/nubia/music/app/scan/MusicScanService$b;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/scan/MusicScanService;Lcn/nubia/music/app/scan/MusicScanService$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/music/app/scan/MusicScanService$a;-><init>(Lcn/nubia/music/app/scan/MusicScanService;)V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->b:Z

    .line 82
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/app/scan/MusicScanService$a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/nubia/music/app/scan/MusicScanService$a;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/music/app/scan/MusicScanService$b;)V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->a:Lcn/nubia/music/app/scan/MusicScanService;

    invoke-virtual {v0}, Lcn/nubia/music/app/scan/MusicScanService;->stopScan()V

    .line 89
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreTaskState,mTaskQueue.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->d:Lcn/nubia/music/app/scan/MusicScanService$b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->d:Lcn/nubia/music/app/scan/MusicScanService$b;

    iput-boolean p1, v0, Lcn/nubia/music/app/scan/MusicScanService$b;->a:Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService$b;

    .line 105
    iput-boolean p1, v0, Lcn/nubia/music/app/scan/MusicScanService$b;->a:Z

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->b:Z

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScanThread run() mTaskQueue.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    monitor-enter v2

    .line 47
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->d:Lcn/nubia/music/app/scan/MusicScanService$b;

    .line 50
    const-string v0, "ScanSingleThread wait"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 52
    const-string v0, "ScanSingleThread wait release"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 59
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->a:Lcn/nubia/music/app/scan/MusicScanService;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcn/nubia/music/app/scan/MusicScanService;->access$002(Lcn/nubia/music/app/scan/MusicScanService;Z)Z

    .line 60
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 61
    iget-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/scan/MusicScanService$b;

    .line 62
    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->d:Lcn/nubia/music/app/scan/MusicScanService$b;

    .line 63
    iget-object v3, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 65
    :goto_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcn/nubia/music/app/scan/MusicScanService$b;->a:Z

    if-ne v6, v2, :cond_2

    .line 68
    :cond_1
    const-string v0, "null==task || true == task.isScanTaskStop"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mScanThread run() mStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcn/nubia/music/app/scan/MusicScanService$a;->a:Lcn/nubia/music/app/scan/MusicScanService;

    iget-boolean v0, v0, Lcn/nubia/music/app/scan/MusicScanService$b;->a:Z

    invoke-static {v2, v0}, Lcn/nubia/music/app/scan/MusicScanService;->access$100(Lcn/nubia/music/app/scan/MusicScanService;Z)V

    goto/16 :goto_0

    .line 76
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
