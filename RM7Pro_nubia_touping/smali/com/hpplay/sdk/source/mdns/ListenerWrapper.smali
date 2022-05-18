.class public Lcom/hpplay/sdk/source/mdns/ListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# instance fields
.field private idWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
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

.field private weakReference:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->messageWeakReference:Ljava/lang/ref/WeakReference;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    if-eq p0, p1, :cond_0

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    :cond_0
    move v1, v0

    .line 38
    :cond_1
    :goto_0
    return v1

    .line 32
    :cond_2
    instance-of v2, p1, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;

    if-eqz v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast p1, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;

    iget-object v3, p1, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    .line 50
    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 62
    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->messageWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->answersAny(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->idWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 69
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ListenerWrapper;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->unregisterListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)Z

    goto :goto_0
.end method
