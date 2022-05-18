.class public Lcom/zte/statistics/sdk/offline/InfoRouter;
.super Ljava/lang/Object;
.source "InfoRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;,
        Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    }
.end annotation


# static fields
.field private static MAX_Q:I = 0x64

.field private static instance:Lcom/zte/statistics/sdk/offline/InfoRouter;

.field private static notifier:Ljava/lang/Object;

.field private static pt:Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;

.field private static status:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;


# instance fields
.field private final DSITANCE:J

.field private beQueue:I

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/zte/statistics/sdk/obj/StatisObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->queue:Ljava/util/Queue;

    const-wide/16 v0, 0x1

    .line 22
    iput-wide v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->DSITANCE:J

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->beQueue:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter;->notifier:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    .locals 1

    .line 10
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter;->status:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;)Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    .locals 0

    .line 10
    sput-object p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->status:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/zte/statistics/sdk/offline/InfoRouter;
    .locals 3

    const-class v0, Lcom/zte/statistics/sdk/offline/InfoRouter;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->instance:Lcom/zte/statistics/sdk/offline/InfoRouter;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/zte/statistics/sdk/offline/InfoRouter;

    invoke-direct {v1}, Lcom/zte/statistics/sdk/offline/InfoRouter;-><init>()V

    sput-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->instance:Lcom/zte/statistics/sdk/offline/InfoRouter;

    .line 29
    new-instance v1, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;

    sget-object v2, Lcom/zte/statistics/sdk/offline/InfoRouter;->instance:Lcom/zte/statistics/sdk/offline/InfoRouter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;-><init>(Lcom/zte/statistics/sdk/offline/InfoRouter;)V

    sput-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->pt:Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;

    .line 30
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->notifier:Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    sput-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->status:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    .line 32
    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->pt:Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->setDaemon(Z)V

    .line 33
    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->pt:Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->start()V

    .line 35
    :cond_0
    sget-object v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->instance:Lcom/zte/statistics/sdk/offline/InfoRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized get()Lcom/zte/statistics/sdk/obj/StatisObj;
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    monitor-exit p0

    return-object v0

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/statistics/sdk/obj/StatisObj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method

.method public insert(Lcom/zte/statistics/sdk/obj/StatisObj;)Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sget v1, Lcom/zte/statistics/sdk/offline/InfoRouter;->MAX_Q:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->queue:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    iget p1, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->beQueue:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->beQueue:I

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "quene big ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->beQueue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_0
    sget-object p0, Lcom/zte/statistics/sdk/offline/InfoRouter;->notifier:Ljava/lang/Object;

    monitor-enter p0

    .line 51
    :try_start_0
    sget-object p1, Lcom/zte/statistics/sdk/offline/InfoRouter;->notifier:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 52
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
