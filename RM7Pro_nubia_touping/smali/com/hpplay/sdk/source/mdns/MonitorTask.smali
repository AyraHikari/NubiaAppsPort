.class public Lcom/hpplay/sdk/source/mdns/MonitorTask;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonitorTask"


# instance fields
.field private isShutdown:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;-><init>(Z)V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z

    .line 32
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z

    .line 33
    return-void
.end method

.method private processElement(Lcom/hpplay/sdk/source/mdns/ElementHelper;Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    if-eqz v0, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    .line 97
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z

    if-eqz v1, :cond_1

    .line 98
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 99
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 100
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getCredibility()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 101
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->setTLLForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;J)V

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getExpiresIn()I

    move-result v2

    .line 107
    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_3

    .line 108
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getCredibility()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;->expired(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V

    .line 119
    :goto_1
    return-void

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getCredibility()I

    move-result v3

    invoke-interface {v1, v0, v3, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;->check(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 113
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_2
    const-string v1, "MonitorTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Element is an unexpected type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_5
    const-string v0, "null"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z

    .line 89
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;->interrupt()V

    .line 90
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 36
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z

    if-nez v0, :cond_0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    .line 39
    if-nez v0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MonitorTask;->isShutdown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 47
    :try_start_1
    invoke-interface {v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;->begin()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    :goto_1
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    :try_start_3
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->dataCopy:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 55
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    .line 56
    :goto_2
    :try_start_4
    array-length v1, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ge v2, v1, :cond_4

    .line 58
    :try_start_5
    aget-object v1, v5, v2

    .line 59
    instance-of v6, v1, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 60
    check-cast v1, Ljava/util/List;

    .line 62
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 63
    :try_start_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 64
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v1, v3

    .line 65
    :goto_3
    :try_start_7
    array-length v7, v6

    if-ge v1, v7, :cond_2

    .line 66
    new-instance v7, Lcom/hpplay/sdk/source/mdns/ElementHelper;

    aget-object v8, v6, v1

    invoke-direct {v7, v0, v8}, Lcom/hpplay/sdk/source/mdns/ElementHelper;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;Ljava/lang/Object;)V

    invoke-direct {p0, v7, v0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;->processElement(Lcom/hpplay/sdk/source/mdns/ElementHelper;Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 48
    :catch_0
    move-exception v1

    .line 49
    :try_start_8
    sget-object v2, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    const-string v0, "MonitorTask"

    const-string v1, "MonitorTask exit..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 64
    :catchall_1
    move-exception v1

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 71
    :catch_2
    move-exception v1

    .line 72
    :try_start_d
    sget-object v6, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 56
    :cond_2
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 69
    :cond_3
    :try_start_e
    new-instance v6, Lcom/hpplay/sdk/source/mdns/ElementHelper;

    invoke-direct {v6, v0, v1}, Lcom/hpplay/sdk/source/mdns/ElementHelper;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v0}, Lcom/hpplay/sdk/source/mdns/MonitorTask;->processElement(Lcom/hpplay/sdk/source/mdns/ElementHelper;Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_4

    .line 76
    :cond_4
    :try_start_f
    invoke-interface {v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;->end()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 80
    :goto_5
    const-wide/16 v0, 0x3e8

    :try_start_10
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    .line 77
    :catch_3
    move-exception v0

    .line 78
    sget-object v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto :goto_5
.end method
