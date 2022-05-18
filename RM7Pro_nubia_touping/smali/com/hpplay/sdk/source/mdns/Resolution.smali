.class public Lcom/hpplay/sdk/source/mdns/Resolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# instance fields
.field private dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;",
            ">;"
        }
    .end annotation
.end field

.field private listenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mdnsVerbose:Z

.field private messageWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final requestIDs:Ljava/util/List;

.field private requestsSent:I

.field private final responses:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    .line 29
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->mdnsVerbose:Z

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 45
    const-string v0, "mdns_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->mdnsVerbose:Z

    .line 46
    return-void
.end method

.method public static hasMulticastDomains(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 238
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_0

    .line 240
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 241
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-static {v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->isMulticastDomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 242
    const/4 v0, 0x1

    .line 246
    :cond_0
    return v0

    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static hasUnicastDomains(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 250
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_0

    .line 252
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 253
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-static {v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->isMulticastDomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    const/4 v0, 0x1

    .line 258
    :cond_0
    return v0

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public getResponse(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 18

    .prologue
    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 51
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v7

    .line 53
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/Resolution;->getResults(ZI)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v8

    .line 55
    const/4 v3, 0x0

    .line 56
    if-eqz v8, :cond_5

    array-length v4, v8

    if-lez v4, :cond_5

    .line 57
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 58
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 59
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 61
    array-length v9, v8

    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v9, :cond_5

    aget-object v10, v8, v6

    .line 62
    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v5

    if-nez v5, :cond_4

    .line 64
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 68
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const/16 v4, 0xa

    invoke-virtual {v7, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 72
    :cond_1
    const/4 v4, 0x3

    new-array v11, v4, [I

    fill-array-data v11, :array_0

    array-length v12, v11

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v12, :cond_4

    aget v13, v11, v5

    .line 75
    invoke-virtual {v10, v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v14

    .line 76
    if-eqz v14, :cond_3

    array-length v4, v14

    if-lez v4, :cond_3

    .line 77
    array-length v15, v14

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_3

    aget-object v16, v14, v4

    .line 78
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 79
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 80
    const/4 v3, 0x1

    .line 77
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 72
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 61
    :cond_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 89
    :cond_5
    if-nez v3, :cond_6

    .line 90
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_6
    return-object v2

    .line 94
    :catch_0
    move-exception v2

    .line 95
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_7

    .line 96
    check-cast v2, Ljava/io/IOException;

    throw v2

    .line 98
    :cond_7
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 100
    throw v3

    .line 72
    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data
.end method

.method public getResults(ZI)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 6

    .prologue
    .line 107
    if-eqz p1, :cond_1

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 109
    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/Resolution;->hasResults()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    monitor-enter v4

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/Resolution;->hasResults()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 114
    :try_start_1
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    sub-long v2, v0, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :cond_0
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 125
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Lcom/hpplay/sdk/source/mdns/Response;

    .line 129
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Response;->inError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Response;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Response;->getMessage()Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 137
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 143
    :goto_3
    return-object v0

    .line 138
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 139
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 143
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 115
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    monitor-enter v1

    .line 150
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Response;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Response;-><init>(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 151
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, p0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 153
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->mdnsVerbose:Z

    if-eqz v0, :cond_1

    .line 159
    const-string v0, "!!!!! Exception Disgarded "

    .line 160
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p0, p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Request ID does not match Response ID - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public hasResults()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inError()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Lcom/hpplay/sdk/source/mdns/Response;

    .line 174
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Response;->inError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->answersAny(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    new-instance v2, Lcom/hpplay/sdk/source/mdns/Response;

    invoke-direct {v2, p0, p2}, Lcom/hpplay/sdk/source/mdns/Response;-><init>(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->responses:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, p0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 193
    :cond_2
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->mdnsVerbose:Z

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "!!!!! Message Disgarded "

    .line 196
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p0, p1, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 197
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Request ID does not match Response ID] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->answersAny(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Response does not answer Query]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public start()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 207
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    .line 208
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 212
    :cond_0
    const/4 p0, 0x0

    .line 233
    :cond_1
    return-object p0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/Resolution;->hasUnicastDomains(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v3, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 217
    iget-object v6, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v5, v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    .line 215
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/Resolution;->hasMulticastDomains(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->dnsQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 225
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestIDs:Ljava/util/List;

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v4, v0, p0}, Lcom/hpplay/sdk/source/mdns/Querier;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/Resolution;->requestsSent:I

    .line 223
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
