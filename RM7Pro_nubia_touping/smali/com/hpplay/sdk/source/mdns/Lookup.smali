.class public Lcom/hpplay/sdk/source/mdns/Lookup;
.super Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;,
        Lcom/hpplay/sdk/source/mdns/Lookup$Domain;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>()V

    .line 145
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>(Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>(Ljava/lang/String;II)V

    .line 130
    return-void
.end method

.method public varargs constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 94
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 99
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 109
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 140
    return-void
.end method

.method public static lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 257
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, v2, v2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 262
    invoke-static {p0, v0, v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 272
    const/16 v0, 0xff

    invoke-static {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static lookupRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Lookup;

    invoke-direct {v0, p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Lookup;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 284
    :try_start_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 286
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->close()V

    .line 284
    return-object v1

    .line 286
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->close()V

    throw v1
.end method

.method public static lookupServices(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 292
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, v2, v2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0
.end method

.method public static lookupServices(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0xff

    invoke-static {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0
.end method

.method public static lookupServices(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0
.end method

.method public static lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 297
    invoke-static {p0, v0, v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0
.end method

.method public static lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0xff

    invoke-static {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v0

    return-object v0
.end method

.method public static lookupServices([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Lookup;

    invoke-direct {v0, p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Lookup;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 320
    :try_start_0
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupServices()[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 322
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->close()V

    .line 320
    return-object v1

    .line 322
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->close()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public lookupDomains()[Lcom/hpplay/sdk/source/mdns/Lookup$Domain;
    .locals 6

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 162
    new-instance v2, Lcom/hpplay/sdk/source/mdns/Lookup$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/hpplay/sdk/source/mdns/Lookup$1;-><init>(Lcom/hpplay/sdk/source/mdns/Lookup;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;)[Ljava/lang/Object;

    .line 186
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/utils/Wait;->forResponse(Ljava/lang/Iterable;)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup;->searchPath:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 189
    new-instance v5, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    invoke-direct {v5, v4}, Lcom/hpplay/sdk/source/mdns/Lookup$Domain;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/Lookup$Domain;

    return-object v0
.end method

.method public lookupRecords()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 197
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 199
    new-instance v2, Lcom/hpplay/sdk/source/mdns/Lookup$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/Lookup$2;-><init>(Lcom/hpplay/sdk/source/mdns/Lookup;Ljava/util/Queue;Ljava/util/Queue;)V

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)[Ljava/lang/Object;

    .line 208
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/utils/Wait;->forResponse(Ljava/lang/Iterable;)V

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 211
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 212
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    return-object v0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 214
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Lookup$3;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/mdns/Lookup$3;-><init>(Lcom/hpplay/sdk/source/mdns/Lookup;Lcom/hpplay/sdk/source/mdns/Lookup$RecordListener;)V

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupRecordsAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Lookup;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Lookup;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 243
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/Lookup;->getQuerier()Lcom/hpplay/sdk/source/mdns/Querier;

    move-result-object v5

    invoke-interface {v5, v4, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lookupServices()[Lcom/hpplay/sdk/source/mdns/ServiceInstance;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/Lookup;->lookupRecords()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mdns/Lookup;->extractServiceInstances([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)[Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/ServiceInstance;

    return-object v0
.end method
