.class Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static packetLogger:Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;


# instance fields
.field protected endTime:J

.field protected key:Ljava/nio/channels/SelectionKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->packetLogger:Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/SelectableChannel;J)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    .line 25
    iput-wide p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->endTime:J

    .line 28
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v1

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->key:Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-void

    .line 33
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    throw v0
.end method

.method protected static blockUntil(Ljava/nio/channels/SelectionKey;J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, p1, v0

    .line 47
    const/4 v0, 0x0

    .line 48
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0

    .line 54
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0

    .line 50
    :cond_1
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method static setPacketLogger(Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;)V
    .locals 0

    .prologue
    .line 76
    sput-object p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->packetLogger:Lcom/hpplay/sdk/source/mdns/xbill/dns/PacketLogger;

    .line 77
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 73
    return-void
.end method
