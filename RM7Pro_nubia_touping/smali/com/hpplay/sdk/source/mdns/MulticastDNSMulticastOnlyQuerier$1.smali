.class Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->send(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

.field final synthetic val$exceptions:Ljava/util/List;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$exceptions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$exceptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 485
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    monitor-enter v1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier$1;->val$results:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
