.class public Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MulticastDNSResponder"


# instance fields
.field private mMulticastOnlyQuerierWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;",
            ">;"
        }
    .end annotation
.end field

.field private mdnsVerbose:Z


# direct methods
.method public constructor <init>(ZLcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mdnsVerbose:Z

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mMulticastOnlyQuerierWeakReference:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public handleException(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public receiveMessage(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mMulticastOnlyQuerierWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;

    .line 42
    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getRcode()I

    .line 46
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    .line 49
    invoke-virtual {v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mdnsVerbose:Z

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "MulticastDNSResponder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiveMessage Opcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 68
    :pswitch_1
    :try_start_0
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, v0, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->cache:Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;

    const/4 v2, 0x4

    invoke-virtual {v1, p2, v2}, Lcom/hpplay/sdk/source/mdns/MulticastDNSCache;->queryCache(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v3

    if-gtz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v3

    if-gtz v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v3

    if-lez v3, :cond_5

    .line 76
    :cond_3
    iget-boolean v3, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mdnsVerbose:Z

    if-eqz v3, :cond_4

    .line 77
    const-string v3, "MulticastDNSResponder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveMessage Query Reply ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_4
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 80
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/MulticastDNSMulticastOnlyQuerier;->writeResponse(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "MulticastDNSResponder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error replying to query - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 84
    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/MulticastDNSResponder;->mdnsVerbose:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "MulticastDNSResponder"

    const-string v1, "receiveMessage No response, client knows answer."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 93
    :pswitch_2
    const-string v0, "MulticastDNSResponder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveMessage Received Invalid Request - Opcode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
