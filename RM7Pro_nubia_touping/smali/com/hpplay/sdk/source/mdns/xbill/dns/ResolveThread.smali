.class Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/Object;

.field private listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

.field private query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

.field private res:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->res:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    .line 13
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 14
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->id:Ljava/lang/Object;

    .line 15
    iput-object p4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->res:Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->query:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Resolver;->send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->id:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->listener:Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolveThread;->id:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method
