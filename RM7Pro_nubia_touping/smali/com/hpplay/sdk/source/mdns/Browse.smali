.class public Lcom/hpplay/sdk/source/mdns/Browse;
.super Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MDNSBrowse"


# instance fields
.field protected browseOperations:Ljava/util/List;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 42
    return-void
.end method

.method public varargs constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 37
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 48
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;I)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSLookupBase;-><init>([Ljava/lang/String;II)V

    .line 17
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    :try_start_2
    const-string v2, "MDNSBrowse"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized start(Lcom/hpplay/sdk/source/mdns/DNSSDListener;)V
    .locals 5

    .prologue
    .line 65
    monitor-enter p0

    if-nez p1, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error sending asynchronous query, listener is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 68
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Browse;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    array-length v0, v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error sending asynchronous query, No queries specified!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/BrowseOperation;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/Browse;->queries:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/Browse;->querier:Lcom/hpplay/sdk/source/mdns/Querier;

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/Browse;->dclass:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/Querier;I)V

    .line 72
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->setDNSSDListener(Lcom/hpplay/sdk/source/mdns/DNSSDListener;)V

    .line 73
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Browse;->browseOperations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/Browse;->querier:Lcom/hpplay/sdk/source/mdns/Querier;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 75
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/BrowseOperation;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit p0

    return-void
.end method
