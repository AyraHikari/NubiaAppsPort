.class public Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/Querier;
.implements Lcom/hpplay/sdk/source/mdns/net/PacketListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field public static final DEFAULT_EDNS_PAYLOADSIZE:I = 0x500

.field public static final TAG:Ljava/lang/String; = "MulticastDNSMulticastOnlyQuerier"

.field private static final USE_ONLY_IPV4_ADDR:Z = true

.field private static final USE_ONLY_IPV6_ADDR:Z


# instance fields
.field protected cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

.field public cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

.field protected cacheVerbose:Z

.field protected cacher:Lcom/hpplay/sdk/source/mdns/Cacher;

.field protected ignoreTruncation:Z

.field private mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

.field protected mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mdnsVerbose:Z

.field protected multicastAddress:Ljava/net/InetAddress;

.field protected multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;",
            ">;"
        }
    .end annotation
.end field

.field protected port:I

.field protected queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

.field protected responseWaitTime:J

.field protected timeoutValue:J

.field protected tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    .line 72
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    const/16 v0, 0x14e9

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->port:I

    .line 80
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->ignoreTruncation:Z

    .line 81
    const-wide/16 v4, 0x1770

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->timeoutValue:J

    .line 82
    const-wide/16 v4, 0x1f4

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->responseWaitTime:J

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->start()V

    .line 98
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/CacheMonitors;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    .line 99
    const-string v0, "mdns_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    .line 100
    const-string v0, "mdns_cache_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cache_verbose"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheVerbose:Z

    .line 111
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getInstance()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    .line 112
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    move-result-object v0

    if-nez v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->setCacheMonitor(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;)V

    .line 116
    :cond_3
    invoke-virtual {p0, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->setAddress(Ljava/net/InetAddress;)V

    .line 118
    if-eqz p1, :cond_7

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->port:I

    invoke-direct {v1, p1, p2, v2, p0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;ILcom/hpplay/sdk/source/mdns/net/PacketListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_4
    :goto_2
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Cacher;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/Cacher;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacher:Lcom/hpplay/sdk/source/mdns/Cacher;

    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacher:Lcom/hpplay/sdk/source/mdns/Cacher;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    .line 158
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->start()V

    goto :goto_3

    :cond_5
    move v0, v1

    .line 99
    goto :goto_0

    :cond_6
    move v2, v1

    .line 100
    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :goto_4
    return-void

    .line 127
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->getHostCount()I

    move-result v0

    .line 128
    :goto_5
    if-ge v1, v0, :cond_4

    .line 129
    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->getIpStr(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 131
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 132
    invoke-direct {p0, v2, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->startMDNS(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 135
    :catch_1
    move-exception v0

    .line 136
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    :try_start_2
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;

    move-result-object v0

    .line 139
    invoke-direct {p0, v0, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->startMDNS(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 140
    :catch_2
    move-exception v0

    .line 141
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 160
    :cond_9
    new-instance v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    invoke-direct {v0, v1, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;-><init>(ZLcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    goto :goto_4
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 88
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "FF02::FB"

    :goto_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 89
    return-void

    .line 88
    :cond_0
    const-string v0, "224.0.0.251"

    goto :goto_0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 206
    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 207
    const-string v0, "currentActivityThread"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 210
    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 211
    const-string v0, "getApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 212
    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 213
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string v2, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private getIpStr(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 256
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 257
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 259
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 260
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 262
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 264
    if-ge v1, p1, :cond_2

    .line 265
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 275
    :goto_1
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method private isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 1

    .prologue
    .line 243
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startMDNS(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 167
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->port:I

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;ILcom/hpplay/sdk/source/mdns/net/PacketListener;)V

    .line 168
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    const-string v2, "-------start end -----"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyEDNS(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    goto :goto_0
.end method

.method public broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    .locals 11

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 286
    :goto_0
    if-eqz v0, :cond_1

    .line 287
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->updateCache([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->convertUpdateToQueryResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 310
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 284
    goto :goto_0

    .line 292
    :cond_1
    if-eqz p2, :cond_5

    .line 293
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0, p1, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v3

    .line 294
    new-array v4, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 295
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    .line 296
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 294
    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 297
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v7

    .line 298
    if-eqz v7, :cond_3

    array-length v0, v7

    if-lez v0, :cond_3

    .line 299
    array-length v8, v7

    move v0, v1

    :goto_3
    if-ge v0, v8, :cond_3

    aget-object v9, v7, v0

    .line 300
    invoke-virtual {p1, v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->findRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 301
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 299
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 294
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 306
    :cond_4
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    goto :goto_1

    .line 287
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    const-string v0, "BrowseShutd"

    const-string v1, " mnds mQuerier release "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 317
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->close()V

    .line 324
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    :try_start_4
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v2, :cond_3

    .line 336
    const-string v2, "MulticastDNSMulticastOnlyQuerier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing multicastProcessor - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 325
    :catch_1
    move-exception v0

    .line 326
    :try_start_5
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v1, :cond_2

    .line 327
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing Cache - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 341
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 350
    :cond_5
    :goto_2
    :try_start_7
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    .line 351
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 357
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 345
    :catch_2
    move-exception v0

    .line 346
    :try_start_8
    const-string v1, "release"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 354
    :catch_3
    move-exception v0

    .line 355
    const-string v1, "release"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method

.method protected convertUpdateToQueryResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 749
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 750
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 752
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 753
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 754
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 756
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v3

    move v0, v1

    .line 757
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 758
    aget-object v4, v3, v0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    invoke-virtual {p1, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 762
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 763
    aget-object v3, v0, v1

    invoke-virtual {v2, v3, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 766
    :cond_1
    return-object v2
.end method

.method public getCache()Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    return-object v0
.end method

.method public getDeviceIpAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 188
    :goto_0
    const/4 v1, 0x0

    .line 190
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 191
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 193
    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x2

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 195
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v2, "MulticastDNSMulticastOnlyQuerier"

    const-string v3, "getDeviceIpAddress Error: %s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public getHostCount()I
    .locals 5

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 225
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 227
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 228
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 230
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    add-int/lit8 v1, v1, 0x1

    .line 233
    goto :goto_0

    :cond_2
    move v0, v1

    .line 238
    :goto_1
    return v0

    .line 235
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 236
    const-string v2, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->isIPv4()Z

    move-result v0

    .line 372
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->isIPv6()Z

    move-result v1

    .line 374
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 375
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->ALL_MULTICAST_DNS_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 381
    :goto_0
    return-object v0

    .line 376
    :cond_0
    if-eqz v0, :cond_1

    .line 377
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv4_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 378
    :cond_1
    if-eqz v1, :cond_2

    .line 379
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv6_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 381
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

.method public isIPv4()Z
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    .line 390
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isIPv4()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIPv6()Z
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    .line 402
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOperational()Z
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    .line 414
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 418
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/CacheMonitors;->isOperational()Z

    move-result v0

    goto :goto_0
.end method

.method public packetReceived(Lcom/hpplay/sdk/source/mdns/net/Packet;)V
    .locals 4

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "MulticastDNSMulticastOnlyQuerier"

    const-string v1, "packetReceived mDNS Datagram Received!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/net/Packet;->getData()[B

    move-result-object v0

    .line 427
    array-length v1, v0

    if-lez v1, :cond_1

    .line 429
    array-length v1, v0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_2

    .line 430
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v0, :cond_1

    .line 431
    const-string v0, "MulticastDNSMulticastOnlyQuerier"

    const-string v1, "packetReceived Error parsing mDNS Response - Invalid DNS header - too short"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    .line 437
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 440
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected parseMessage([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 4

    .prologue
    .line 785
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v1, :cond_0

    .line 788
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 791
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing message - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 792
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 794
    throw v1
.end method

.method public registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-object p1
.end method

.method public send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 460
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Query is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 464
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v1

    .line 470
    packed-switch v1, :pswitch_data_0

    .line 508
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know what to do with Opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queries."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :pswitch_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v1, v0, v5}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    .line 474
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->answersAll(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 511
    :goto_0
    return-object v0

    .line 477
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    new-instance v3, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, v0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    .line 495
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/utils/Wait;->forResponse(Ljava/lang/Iterable;)V

    .line 496
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 497
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 498
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 500
    throw v1

    .line 505
    :pswitch_2
    invoke-virtual {p0, v0, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v1, v0, v5}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 520
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 521
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 522
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    .line 523
    new-instance v3, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;

    invoke-direct {v3, v1, v0, p2, p0}, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;-><init>(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V

    .line 524
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 525
    packed-switch v2, :pswitch_data_0

    .line 571
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t know what to do with Opcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " queries."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 572
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    .line 576
    :goto_0
    return-object v1

    .line 529
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->answersAll(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 531
    new-instance v4, Lcom/hpplay/sdk/source/mdns/MessageInfos;

    invoke-direct {v4}, Lcom/hpplay/sdk/source/mdns/MessageInfos;-><init>()V

    .line 532
    invoke-virtual {v4, v1}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->setIds(Ljava/lang/Object;)V

    .line 533
    invoke-virtual {v4, p2}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->setListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V

    .line 534
    invoke-virtual {v4, v2}, Lcom/hpplay/sdk/source/mdns/MessageInfos;->setMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 535
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mReceiveMessageThread:Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;

    invoke-virtual {v2, v4}, Lcom/hpplay/sdk/source/mdns/ReceiveMessageThread;->updateReceiveData(Lcom/hpplay/sdk/source/mdns/MessageInfos;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    :goto_1
    :try_start_2
    const-string v0, "mdns_resolve_wait"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    .line 546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-lez v0, :cond_1

    :goto_2
    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 556
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    invoke-interface {p2, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 540
    :catch_1
    move-exception v0

    .line 541
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    .line 542
    invoke-interface {p2, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 546
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_2

    .line 563
    :pswitch_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, v0, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 564
    :catch_2
    move-exception v0

    .line 565
    invoke-interface {p2, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 566
    invoke-virtual {p0, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAddress(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastAddress:Ljava/net/InetAddress;

    .line 624
    return-void
.end method

.method public setCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;)V
    .locals 4

    .prologue
    .line 630
    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    if-eqz v0, :cond_1

    .line 631
    check-cast p1, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    .line 632
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->setCacheMonitor(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    :try_start_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Cache;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    .line 638
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->getCacheMonitor()Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cacheMonitor:Lcom/hpplay/sdk/source/mdns/CacheMonitors;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->setCacheMonitor(Lcom/hpplay/sdk/source/mdns/MulticastDNSCache$CacheMonitor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v1, :cond_2

    .line 643
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set Cache - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setEDNS(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->setEDNS(IIILjava/util/List;)V

    .line 657
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 6

    .prologue
    .line 663
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid EDNS level - must be 0 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    if-nez p2, :cond_1

    .line 668
    const/16 v1, 0x500

    .line 671
    :goto_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    const/4 v2, 0x0

    move v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;-><init>(IIIILjava/util/List;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->queryOPT:Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    .line 672
    return-void

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->ignoreTruncation:Z

    .line 676
    return-void
.end method

.method public setPort(I)V
    .locals 0

    .prologue
    .line 683
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->port:I

    .line 684
    return-void
.end method

.method public setRetryWaitTime(I)V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->setRetryWaitTime(II)V

    .line 691
    return-void
.end method

.method public setRetryWaitTime(II)V
    .locals 4

    .prologue
    .line 697
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->responseWaitTime:J

    .line 698
    return-void
.end method

.method public setTCP(Z)V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    .line 727
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->setTimeout(II)V

    .line 713
    return-void
.end method

.method public setTimeout(II)V
    .locals 4

    .prologue
    .line 719
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->timeoutValue:J

    .line 720
    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 731
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 738
    :goto_0
    monitor-exit p0

    return v0

    .line 734
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 735
    :catch_0
    move-exception v1

    .line 736
    :try_start_2
    const-string v2, "MulticastDNSMulticastOnlyQuerier"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateCache([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V
    .locals 8

    .prologue
    .line 875
    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    .line 876
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 877
    aget-object v2, p1, v0

    .line 880
    :try_start_0
    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->clone(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    .line 881
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getDClass()I

    move-result v3

    and-int/lit16 v3, v3, 0x7fff

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->setDClassForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 882
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getTTL()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    .line 883
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->lookupRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;II)Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;

    move-result-object v3

    .line 884
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SetResponse;->answers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;

    move-result-object v3

    .line 885
    if-eqz v3, :cond_2

    array-length v4, v3

    if-lez v4, :cond_2

    .line 886
    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v3

    .line 887
    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    .line 888
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v3, :cond_0

    .line 889
    const-string v3, "MulticastDNSMulticastOnlyQuerier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCache Updating Cached Record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v3, v1, p2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->updateRRset(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 876
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 894
    :cond_2
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v3, :cond_3

    .line 895
    const-string v3, "MulticastDNSMulticastOnlyQuerier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCache Caching Record: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_3
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, p2, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 903
    :catch_0
    move-exception v1

    .line 904
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v3, :cond_1

    .line 905
    const-string v3, "MulticastDNSMulticastOnlyQuerier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error caching record - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 901
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v4

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->removeElementCopy(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 910
    :cond_5
    return-void
.end method

.method protected verifyTSIG(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)I
    .locals 4

    .prologue
    .line 799
    if-nez p4, :cond_1

    .line 800
    const/4 v0, 0x0

    .line 809
    :cond_0
    :goto_0
    return v0

    .line 803
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getTSIG()Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    move-result-object v0

    invoke-virtual {p4, p2, p3, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->verify(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[BLcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)I

    move-result v0

    .line 805
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v1, :cond_0

    .line 806
    const-string v1, "MulticastDNSMulticastOnlyQuerier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyTSIG TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 814
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    .line 815
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setID(I)V

    .line 816
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->applyEDNS(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 817
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->tsig:Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;->apply(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;)V

    .line 821
    :cond_0
    const v0, 0xffff

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->toWire(I)[B

    move-result-object v4

    .line 822
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastProcessors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;

    .line 824
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getOPT()Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    move-result-object v1

    .line 825
    if-eqz v1, :cond_2

    .line 826
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getPayloadSize()I

    move-result v1

    .line 832
    :goto_1
    array-length v6, v4

    if-le v6, v1, :cond_4

    .line 833
    invoke-virtual {v3, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS Message too large! - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes in size."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_2
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->getMaxPayloadSize()I

    move-result v1

    goto :goto_1

    .line 836
    :cond_3
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->splitMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    move v0, v2

    .line 837
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_5

    .line 838
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 845
    :cond_4
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 846
    :catch_0
    move-exception v1

    .line 848
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mResolverListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 849
    const-string v7, "MulticastDNSMulticastOnlyQuerier"

    invoke-interface {v0, v7, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_3

    .line 854
    :cond_5
    return-void
.end method

.method protected writeResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 861
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v0, :cond_0

    .line 862
    const-string v0, "MulticastDNSMulticastOnlyQuerier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeResponse Writing Response to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->multicastAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 867
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 868
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 869
    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 871
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeMessageToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 872
    return-void
.end method
