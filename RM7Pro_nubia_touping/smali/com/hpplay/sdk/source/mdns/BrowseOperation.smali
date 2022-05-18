.class Lcom/hpplay/sdk/source/mdns/BrowseOperation;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseOperation"


# instance fields
.field private broadcastDelay:I

.field private dclass:I

.field private dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

.field private isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

.field protected mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

.field private resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

.field private final services:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/Querier;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->broadcastDelay:I

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 55
    :cond_0
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 56
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 57
    iput p4, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dclass:I

    .line 58
    return-void
.end method


# virtual methods
.method declared-synchronized answersQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z
    .locals 13

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 91
    :goto_0
    monitor-exit p0

    return v0

    .line 72
    :cond_0
    if-eqz p1, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    if-eqz v0, :cond_6

    .line 73
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 74
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 75
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    .line 76
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    .line 77
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v9

    .line 78
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v10

    .line 79
    invoke-virtual {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v6

    .line 80
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v11

    .line 82
    const/16 v12, 0xff

    if-eq v9, v12, :cond_1

    if-ne v9, v10, :cond_4

    .line 83
    :cond_1
    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 84
    invoke-virtual {v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    and-int/lit16 v6, v6, 0x7fff

    and-int/lit16 v7, v11, 0x7fff

    if-ne v6, v7, :cond_4

    .line 86
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized convertMassge(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 134
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    :cond_0
    monitor-exit p0

    return-void

    .line 138
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 139
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 140
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 141
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p2, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v9

    .line 142
    array-length v10, v9

    move v5, v4

    :goto_0
    if-ge v5, v10, :cond_4

    aget-object v3, v9, v5

    .line 143
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->answersQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getAdditionalName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_2

    .line 146
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 162
    :goto_1
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 151
    :sswitch_0
    move-object v0, v3

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    move-object v2, v0

    .line 152
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 155
    :sswitch_1
    :try_start_2
    move-object v0, v3

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;

    move-object v2, v0

    .line 156
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_3
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 169
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 170
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 174
    :cond_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    if-eqz v2, :cond_7

    .line 176
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    invoke-interface {v2, p1, p2}, Lcom/hpplay/sdk/source/mdns/DNSSDListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 179
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 180
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 182
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :try_start_3
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_4

    .line 188
    :pswitch_0
    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    .line 191
    check-cast v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    .line 193
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTTL()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_b

    .line 194
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    const/16 v10, 0xff

    iget v11, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dclass:I

    invoke-static {v2, v10, v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->newRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->newQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v2

    invoke-interface {v9, v2}, Lcom/hpplay/sdk/source/mdns/Querier;->send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {p0, v7}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v7

    .line 195
    array-length v2, v7

    if-lez v2, :cond_8

    .line 196
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v4

    .line 197
    :goto_5
    :try_start_4
    array-length v9, v7

    if-ge v2, v9, :cond_a

    .line 198
    iget-object v9, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    aget-object v10, v7, v2

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 199
    iget-object v9, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    aget-object v10, v7, v2

    invoke-virtual {v10}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v10

    aget-object v11, v7, v2

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    aget-object v9, v7, v2

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v9

    aget-object v10, v7, v2

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 203
    :cond_a
    monitor-exit v8

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    :try_start_6
    const-string v7, "BrowseOperation"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 206
    :cond_b
    :try_start_7
    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    monitor-enter v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 207
    :try_start_8
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 208
    if-eqz v2, :cond_c

    .line 209
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->services:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v8

    invoke-interface {v5, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_c
    monitor-exit v7

    goto/16 :goto_4

    :catchall_2
    move-exception v2

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 221
    :cond_d
    :try_start_a
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 223
    :try_start_b
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    invoke-interface {v4, p1, v2}, Lcom/hpplay/sdk/source/mdns/DNSSDListener;->serviceDiscovered(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/ServiceInstance;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 224
    :catch_1
    move-exception v2

    .line 225
    :try_start_c
    const-string v4, "BrowseOperation"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 229
    :cond_e
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 231
    :try_start_d
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    invoke-interface {v4, p1, v2}, Lcom/hpplay/sdk/source/mdns/DNSSDListener;->serviceRemoved(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/ServiceInstance;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 232
    :catch_2
    move-exception v2

    .line 233
    :try_start_e
    const-string v4, "BrowseOperation"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_7

    .line 141
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 149
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 186
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected varargs extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 268
    const/4 v0, 0x0

    .line 270
    array-length v5, p1

    move v2, v3

    move-object v4, v0

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, p1, v2

    .line 271
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 272
    if-nez v4, :cond_0

    .line 270
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v4, v0

    goto :goto_0

    .line 276
    :cond_0
    array-length v1, v4

    array-length v6, v0

    add-int/2addr v1, v6

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 277
    array-length v6, v1

    invoke-static {v4, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v4, v1

    array-length v6, v0

    invoke-static {v0, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_1

    .line 281
    :cond_1
    invoke-virtual {p0, v4}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0

    .line 271
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method protected extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const-wide/16 v10, 0x0

    .line 285
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    new-instance v0, Lcom/hpplay/sdk/source/mdns/ServiceRecodSorter;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/ServiceRecodSorter;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 288
    array-length v5, p1

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_7

    aget-object v0, p1, v2

    .line 289
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 288
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 292
    :sswitch_0
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;)V

    .line 293
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getName()Lcom/hpplay/sdk/source/mdns/ServiceName;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    const-string v1, "BrowseOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 299
    :sswitch_1
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    .line 300
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 301
    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTTL()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 303
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addPointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removePointer(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    goto :goto_1

    .line 310
    :sswitch_2
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    .line 311
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 312
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;->getTTL()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    .line 314
    new-array v6, v12, [Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    aput-object v0, v6, v3

    invoke-virtual {v1, v6}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V

    goto :goto_1

    .line 316
    :cond_2
    new-array v6, v12, [Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    aput-object v0, v6, v3

    invoke-virtual {v1, v6}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeTextRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;)V

    goto :goto_1

    .line 321
    :sswitch_3
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    .line 322
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 323
    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 324
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 325
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getTTL()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 326
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addAddress(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 328
    :cond_4
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeAddress(Ljava/net/InetAddress;)V

    goto :goto_2

    .line 334
    :sswitch_4
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;

    .line 335
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 336
    check-cast v1, Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    .line 337
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v7

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 338
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getTTL()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 339
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->addAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 341
    :cond_6
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/hpplay/sdk/source/mdns/ServiceInstance;->removeAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 348
    :cond_7
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    return-object v0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x1c -> :sswitch_4
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method getQueries()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    return-object v0
.end method

.method public getQuitSwitch()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 243
    :cond_0
    return-void
.end method

.method matchesBrowse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 95
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 97
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 98
    invoke-virtual {p0, v4}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->answersQuery(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0

    .line 97
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 115
    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0, p2}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->matchesBrowse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->convertMassge(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "BrowseOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    return-object p1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 357
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    .line 358
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->interrupt()V

    .line 359
    const-string v0, "BrowseOperation"

    const-string v1, " browse release "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mdns/Querier;->close()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v0, "BrowseOperation"

    const-string v1, "udp release "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isQuit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :try_start_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->broadcastDelay:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->broadcastDelay:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->broadcastDelay:I

    .line 251
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mMessages:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 252
    iget-object v5, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->mQuerier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lcom/hpplay/sdk/source/mdns/Querier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 250
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "BrowseOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->broadcastDelay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    .line 260
    const-string v0, "BrowseOperation"

    const-string v1, "browseOperation exit ..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    return-void
.end method

.method public setDNSSDListener(Lcom/hpplay/sdk/source/mdns/DNSSDListener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->dnssdListener:Lcom/hpplay/sdk/source/mdns/DNSSDListener;

    .line 62
    return-void
.end method

.method unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->resolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    return-object v0
.end method
