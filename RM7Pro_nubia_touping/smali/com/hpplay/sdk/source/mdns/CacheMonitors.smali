.class public Lcom/hpplay/sdk/source/mdns/CacheMonitors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheMonitors"


# instance fields
.field private final authRecords:Ljava/util/List;

.field private lastPoll:J

.field private final nonauthRecords:Ljava/util/List;

.field private querierWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->lastPoll:J

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    if-eqz v0, :cond_3

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->lastPoll:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last Poll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->lastPoll:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds ago. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_2
    const-string v1, " Cache Monitor Check "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "CacheMonitors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->lastPoll:J

    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public check(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;II)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    if-eqz v0, :cond_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->getTTL()J

    move-result-wide v2

    .line 63
    const/4 v0, 0x4

    if-lt p2, v0, :cond_1

    .line 64
    invoke-virtual {p0, v2, v3, p3}, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->isAboutToExpire(JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    .line 66
    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    .line 68
    :try_start_0
    invoke-static {v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->setTLLForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;J)V

    .line 69
    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v6, "CacheMonitors"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 76
    :cond_1
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 81
    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 82
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 83
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    move v2, v1

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 84
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    const-string v0, "CacheMonitors"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end CacheMonitor Broadcasting update for Authoritative Records:\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 95
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 96
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    .line 97
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    if-eqz v0, :cond_6

    .line 104
    :cond_5
    const-string v0, "CacheMonitors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end CacheMonitor Locally Broadcasting Non-Authoritative Records:\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 108
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 113
    new-instance v2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" occured while refreshing cached entries."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 117
    const-string v4, "CacheMonitors"

    invoke-interface {v0, v4, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v0, :cond_8

    .line 121
    const-string v0, "CacheMonitors"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    return-void

    .line 123
    :catch_1
    move-exception v0

    .line 124
    const-string v1, "CacheMonitors"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public expired(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;I)V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->querierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const-string v0, "CacheMonitors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expiredCacheMonitor RRset expired : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1
    const/4 v0, 0x4

    if-lt p2, v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->authRecords:Ljava/util/List;

    .line 142
    :goto_0
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v3

    .line 143
    if-eqz v3, :cond_3

    array-length v1, v3

    if-lez v1, :cond_3

    .line 144
    const/4 v1, 0x0

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_3

    .line 146
    :try_start_0
    aget-object v2, v3, v1

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->setTLLForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;J)V

    .line 147
    aget-object v2, v3, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->nonauthRecords:Ljava/util/List;

    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    const-string v4, "CacheMonitors"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 153
    :cond_3
    return-void
.end method

.method protected isAboutToExpire(JI)Z
    .locals 5

    .prologue
    .line 160
    int-to-double v0, p3

    long-to-double v2, p1

    div-double/2addr v0, v2

    .line 161
    const-wide v2, 0x3fb1eb8520000000L    # 0.07000000029802322

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x3fbeb851e0000000L    # 0.11999999731779099

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    :cond_0
    const-wide v2, 0x3fc3333340000000L    # 0.15000000596046448

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x3fc5c28f60000000L    # 0.17000000178813934

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    :cond_1
    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    const-wide v2, 0x3fcc28f5c0000000L    # 0.2199999988079071

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOperational()Z
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->lastPoll:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
