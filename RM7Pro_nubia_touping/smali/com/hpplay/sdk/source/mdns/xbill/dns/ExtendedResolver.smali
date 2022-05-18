.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;
    }
.end annotation


# static fields
.field private static final quantum:I = 0x5


# instance fields
.field private lbStart:I

.field private loadBalance:Z

.field private resolvers:Ljava/util/List;

.field private retries:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->loadBalance:Z

    .line 19
    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->lbStart:I

    .line 20
    const/4 v1, 0x3

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->retries:I

    .line 27
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->init()V

    .line 28
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->getCurrentConfig()Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverConfig;->servers()[Ljava/lang/String;

    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 31
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;

    aget-object v3, v1, v0

    invoke-direct {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTimeout(I)V

    .line 33
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SimpleResolver;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->loadBalance:Z

    return v0
.end method

.method static synthetic access$200(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$202(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;I)I
    .locals 0

    .prologue
    .line 15
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->lbStart:I

    return p1
.end method

.method static synthetic access$208(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I
    .locals 2

    .prologue
    .line 15
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->lbStart:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$300(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->retries:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 96
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->start()Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    return-object v0
.end method

.method public sendAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 101
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver$Resolution;->startAsync(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V

    .line 102
    return-object v0
.end method

.method public setEDNS(I)V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setEDNS(I)V

    .line 63
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setEDNS(IIILjava/util/List;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setIgnoreTruncation(Z)V

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setPort(I)V

    .line 42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public setTCP(Z)V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTCP(Z)V

    .line 49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTSIGKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIG;)V

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->setTimeout(II)V

    .line 92
    return-void
.end method

.method public setTimeout(II)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->setTimeout(II)V

    .line 84
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method
