.class public Lcom/zte/statistics/sdk/obj/ChainedEventObj;
.super Lcom/zte/statistics/sdk/obj/StatisObj;
.source "ChainedEventObj.java"


# static fields
.field public static inner_split_exp:Ljava/lang/String; = "*|*%"

.field private static sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field public static split_exp:Ljava/lang/String; = "*|*&"


# instance fields
.field private final EVENT_MAX_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 101
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-wide/16 v3, 0x14

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/StatisObj;-><init>()V

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->EVENT_MAX_SIZE:I

    .line 38
    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mEvent:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mParaMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/statistics/sdk/obj/ChainedEventObj;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->insertEvent()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/statistics/sdk/obj/ChainedEventObj;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->checkIfUpload(Z)V

    return-void
.end method

.method private checkIfUpload(Z)V
    .locals 5

    .line 66
    invoke-direct {p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->timeToUploadData()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/statistics/sdk/db/dao/EventsDao;

    invoke-direct {v0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;-><init>()V

    invoke-virtual {v0}, Lcom/zte/statistics/sdk/db/dao/EventsDao;->getCounts()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/zte/statistics/sdk/comm/PrefercenUtil;->setLastUploadDataTime(Landroid/content/Context;J)V

    .line 68
    invoke-static {}, Lcom/zte/statistics/sdk/offline/PayloadManager;->getInstance()Lcom/zte/statistics/sdk/offline/PayloadManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1}, Lcom/zte/statistics/sdk/offline/PayloadManager;->ensureRunning(Lcom/zte/statistics/sdk/CollectionSendResult;Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private insertEvent()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/zte/statistics/sdk/ZTEStatistics;->sync:[Ljava/lang/Byte;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    .line 81
    iget-object v3, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mEvent:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 86
    iget-object p0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mParaMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->inner_split_exp:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->split_exp:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    sget-object v4, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->split_exp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr p0, v4

    invoke-virtual {v3, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_3
    invoke-static {v2, v3}, Lcom/zte/statistics/sdk/offline/ActionManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event names="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 95
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lwp e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/zte/statistics/sdk/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private timeToUploadData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public emit()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/util/Util;->allowStatistic(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_0
    new-instance v0, Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;

    invoke-direct {v0, p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj$1;-><init>(Lcom/zte/statistics/sdk/obj/ChainedEventObj;)V

    .line 117
    sget-object p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public emitAnyNet()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/statistics/sdk/util/Util;->allowStatistic(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    new-instance v0, Lcom/zte/statistics/sdk/obj/ChainedEventObj$2;

    invoke-direct {v0, p0}, Lcom/zte/statistics/sdk/obj/ChainedEventObj$2;-><init>(Lcom/zte/statistics/sdk/obj/ChainedEventObj;)V

    .line 133
    sget-object p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mParaMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public push(Ljava/lang/String;)Lcom/zte/statistics/sdk/obj/ChainedEventObj;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/statistics/sdk/Log;->s(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/zte/statistics/sdk/obj/ChainedEventObj;->mEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method
