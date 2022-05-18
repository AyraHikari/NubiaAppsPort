.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResolverConfig"

.field private static currentConfig:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;


# instance fields
.field private ndots:I

.field private searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private servers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 441
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->refresh()V

    .line 442
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots:I

    .line 37
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->findAndroid()V

    .line 45
    return-void
.end method

.method private addSearch(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding search "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    :cond_0
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private addServer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 48
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    return-void
.end method

.method private configureFromLists(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 99
    new-array v0, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 102
    :cond_1
    return-void
.end method

.method private configureNdots(I)V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 106
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots:I

    .line 109
    :cond_0
    return-void
.end method

.method private findAndroid()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 389
    const-string v1, "^\\d+(\\.\\d+){3}$"

    .line 390
    const-string v1, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 395
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 396
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 397
    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "net.dns1"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "net.dns2"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    const-string v6, "net.dns3"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    const-string v6, "net.dns4"

    aput-object v6, v5, v1

    move v1, v0

    .line 399
    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_2

    .line 400
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v5, v1

    aput-object v7, v0, v6

    .line 401
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 402
    if-eqz v0, :cond_1

    const-string v6, "^\\d+(\\.\\d+){3}$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "^[0-9a-f]+(:[0-9a-f]*)+:[0-9a-f]+$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 403
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    const-string v1, "ResolverConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 411
    return-void
.end method

.method private findProperty()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    const-string v3, "dns.server"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_0

    .line 117
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->addServer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 124
    :cond_0
    const-string v3, "dns.search"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_1

    .line 126
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->addSearch(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->configureFromLists(Ljava/util/List;Ljava/util/List;)V

    .line 134
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static declared-synchronized getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;
    .locals 2

    .prologue
    .line 430
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->currentConfig:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static refresh()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;-><init>()V

    .line 435
    const-class v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    monitor-enter v1

    .line 436
    :try_start_0
    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->currentConfig:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    .line 437
    monitor-exit v1

    .line 438
    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ndots()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->ndots:I

    goto :goto_0
.end method

.method public searchPath()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->searchlist:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public servers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers:[Ljava/lang/String;

    return-object v0
.end method
