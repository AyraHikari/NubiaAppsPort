.class public Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/Querier;


# instance fields
.field protected ipv4:Z

.field private ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

.field protected ipv6:Z

.field private ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

.field private mResolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

.field private final mdnsVerbose:Z

.field protected multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

.field protected resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

.field protected unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-array v0, v3, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;-><init>()V

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v2, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;-><init>(ZZ[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V

    .line 95
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;-><init>(ZZ[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V

    .line 106
    const-string v0, "checklistnen"

    const-string v1, "MulticastDNSQuerier"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public constructor <init>(ZZLcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;-><init>(ZZ[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V

    .line 119
    return-void
.end method

.method public constructor <init>(ZZ[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4:Z

    .line 64
    iput-boolean v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6:Z

    .line 72
    new-instance v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 121
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 122
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 133
    const-string v1, "mdns_verbose"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->mdnsVerbose:Z

    .line 135
    if-eqz p3, :cond_0

    array-length v1, p3

    if-nez v1, :cond_3

    .line 136
    :cond_0
    new-array v1, v5, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;

    invoke-direct {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 144
    :goto_0
    if-eqz p1, :cond_8

    .line 147
    :try_start_0
    const-string v1, "DNSQuerier"

    const-string v2, "create DNSQuerier-------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;-><init>(Z)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 156
    :goto_1
    if-eqz p2, :cond_1

    .line 158
    :try_start_1
    new-instance v1, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;-><init>(Z)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 159
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    if-eqz v1, :cond_4

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    .line 169
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 184
    :cond_2
    :goto_3
    return-void

    .line 138
    :cond_3
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    move-object v2, v1

    .line 152
    goto :goto_1

    .line 160
    :catch_1
    move-exception v1

    .line 161
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    move-object v0, v1

    .line 162
    goto :goto_2

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    if-eqz v1, :cond_5

    .line 172
    new-array v0, v5, [Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    .line 173
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    goto :goto_3

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    if-eqz v1, :cond_6

    .line 175
    new-array v0, v5, [Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    .line 176
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->resolverDispatch:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    goto :goto_3

    .line 178
    :cond_6
    if-eqz v2, :cond_7

    .line 179
    throw v2

    .line 180
    :cond_7
    if-eqz v0, :cond_2

    .line 181
    throw v0

    :cond_8
    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->mResolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    return-object v0
.end method

.method public static isMulticastDomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    sget-object v3, Lcom/hpplay/sdk/source/mdns/Constants;->IPv4_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 42
    invoke-virtual {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    :cond_0
    :goto_1
    return v0

    .line 41
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_2
    sget-object v3, Lcom/hpplay/sdk/source/mdns/Constants;->IPv6_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v4, v3

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 48
    invoke-virtual {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->subdomain(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 53
    goto :goto_1
.end method


# virtual methods
.method public broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    iget-object v4, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v5, v4

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 195
    :try_start_0
    invoke-interface {v6, p1, p2}, Lcom/hpplay/sdk/source/mdns/Querier;->broadcast(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v1, 0x1

    .line 193
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 203
    new-instance v6, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$2;

    invoke-direct {v6, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$2;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)V

    invoke-interface {v5, p1, v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 218
    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 219
    throw v0

    .line 197
    :catch_0
    move-exception v0

    goto :goto_1

    .line 221
    :cond_2
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 227
    :try_start_0
    invoke-interface {v3}, Lcom/hpplay/sdk/source/mdns/Querier;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :catch_0
    move-exception v3

    .line 229
    const-string v4, "mdns"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 232
    :cond_0
    iput-object v5, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 233
    iput-object v5, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6Responder:Lcom/hpplay/sdk/source/mdns/Querier;

    .line 234
    return-void
.end method

.method public getMulticastDomains()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6:Z

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->ALL_MULTICAST_DNS_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 247
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4:Z

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv4_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 244
    :cond_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6:Z

    if-eqz v0, :cond_2

    .line 245
    sget-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv6_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_0
.end method

.method public getUnicastResolvers()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    return-object v0
.end method

.method public isIPv4()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv4:Z

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->ipv6:Z

    return v0
.end method

.method public isOperational()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 273
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 274
    invoke-interface {v4}, Lcom/hpplay/sdk/source/mdns/Querier;->isOperational()Z

    move-result v4

    if-nez v4, :cond_0

    .line 279
    :goto_1
    return v0

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 285
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->registerListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    move-result-object v3

    iput-object v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->mResolverListener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-object p1
.end method

.method public send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 2

    .prologue
    .line 295
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Resolution;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/hpplay/sdk/source/mdns/Resolution;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V

    .line 296
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Resolution;->start()Ljava/lang/Object;

    .line 297
    const/16 v1, 0x1770

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/Resolution;->getResponse(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    return-object v0
.end method

.method public sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/hpplay/sdk/source/mdns/Resolution;

    invoke-direct {v0, p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/Resolution;-><init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V

    .line 305
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/Resolution;->start()Ljava/lang/Object;

    .line 306
    return-object v0
.end method

.method public setEDNS(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 313
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 314
    invoke-interface {v4, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setEDNS(I)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 318
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setEDNS(I)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 320
    :cond_1
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 326
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 327
    invoke-interface {v4, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/Querier;->setEDNS(IIILjava/util/List;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 331
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setEDNS(IIILjava/util/List;)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_1
    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 340
    invoke-interface {v4, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setIgnoreTruncation(Z)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 344
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setIgnoreTruncation(Z)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    :cond_1
    return-void
.end method

.method public setPort(I)V
    .locals 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 353
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setPort(I)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method public setRetryWaitTime(I)V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 362
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setTimeout(I)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method

.method public setRetryWaitTime(II)V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 371
    invoke-interface {v3, p1, p2}, Lcom/hpplay/sdk/source/mdns/Querier;->setTimeout(II)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_0
    return-void
.end method

.method public setTCP(Z)V
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 380
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTCP(Z)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method

.method public setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 414
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 415
    invoke-interface {v4, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 419
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 421
    :cond_1
    return-void
.end method

.method public setTimeout(I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 388
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 389
    invoke-interface {v4, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->setTimeout(I)V

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 393
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTimeout(I)V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    :cond_1
    return-void
.end method

.method public setTimeout(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 402
    invoke-interface {v4, p1, p2}, Lcom/hpplay/sdk/source/mdns/Querier;->setTimeout(II)V

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->unicastResolvers:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 406
    invoke-interface {v3, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTimeout(II)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->multicastResponders:[Lcom/hpplay/sdk/source/mdns/Querier;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 425
    invoke-interface {v3, p1}, Lcom/hpplay/sdk/source/mdns/Querier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
