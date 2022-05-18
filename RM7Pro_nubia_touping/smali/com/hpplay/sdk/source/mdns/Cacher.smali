.class public Lcom/hpplay/sdk/source/mdns/Cacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cacher"


# instance fields
.field weakReference:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Cacher;->weakReference:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Cacher;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    move-result v2

    .line 44
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v3

    .line 46
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Cacher;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->ignoreTruncation:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    const-string v0, "Cacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveMessage Truncated Message Ignored : RCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 68
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Cacher;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    iget-boolean v0, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->mdnsVerbose:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "Cacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveMessage RCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "Cacher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveMessage Opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 56
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Cacher;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {p2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->updateCache([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    goto :goto_1

    .line 64
    :pswitch_2
    const-string v0, "Cacher"

    const-string v1, "receiveMessage Updates from the network are not allowed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 57
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
