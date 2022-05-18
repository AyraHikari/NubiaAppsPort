.class Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->access$000(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->access$000(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->handleException(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 77
    :cond_0
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->access$000(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier$1;->this$0:Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;->access$000(Lcom/hpplay/sdk/source/mdns/MulticastDNSQuerier;)Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;->receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V

    .line 84
    :cond_0
    return-void
.end method
