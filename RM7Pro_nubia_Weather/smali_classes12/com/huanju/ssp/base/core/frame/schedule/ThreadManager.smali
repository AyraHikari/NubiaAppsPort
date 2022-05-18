.class public Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    }
.end annotation


# static fields
.field private static final DEFAULT_SINGLE_POOL_NAME:Ljava/lang/String; = "DEFAULT_SINGLE_POOL_NAME"

.field private static mCheckViewPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

.field private static mDownloadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

.field private static mLongPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestAdPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

.field private static mShortPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

.field private static final mSingleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mLongPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 19
    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mShortPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 21
    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mDownloadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 23
    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mCheckViewPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 25
    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mRequestAdPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mSingleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCheckViewPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 51
    const-class v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mCheckViewPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 52
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    sput-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mCheckViewPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 54
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mCheckViewPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized getDownloadPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 44
    const-class v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mDownloadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 45
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    sput-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mDownloadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 47
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mDownloadPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized getLongPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 61
    const-class v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mLongPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 62
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    sput-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mLongPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 64
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mLongPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized getRequestAdPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 34
    const-class v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mRequestAdPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 35
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    sput-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mRequestAdPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 37
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mRequestAdPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized getShortPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 71
    const-class v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mShortPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 72
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    sput-object v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mShortPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 74
    :cond_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mShortPool:Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static getSinglePool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 1

    .prologue
    .line 81
    const-string v0, "DEFAULT_SINGLE_POOL_NAME"

    invoke-static {v0}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    return-object v0
.end method

.method public static getSinglePool(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v7, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mSingleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 89
    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .line 90
    .local v1, "singlePool":Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    .end local v1    # "singlePool":Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/huanju/ssp/base/core/frame/schedule/ThreadManager$1;)V

    .line 92
    .restart local v1    # "singlePool":Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    sget-object v0, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    monitor-exit v7

    return-object v1

    .line 95
    .end local v1    # "singlePool":Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onDestroy()V
    .locals 4

    .prologue
    .line 99
    sget-object v2, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 100
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->shutdown()V

    goto :goto_0

    .line 103
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;>;"
    :cond_0
    sget-object v2, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 104
    invoke-static {}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager;->getCheckViewPool()Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/frame/schedule/ThreadManager$ThreadPoolProxy;->stop()V

    .line 105
    return-void
.end method
