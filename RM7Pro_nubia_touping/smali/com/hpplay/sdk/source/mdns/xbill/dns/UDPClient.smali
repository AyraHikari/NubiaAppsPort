.class final Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;
.source "SourceFile"


# static fields
.field private static final EPHEMERAL_RANGE:I = 0xfbff

.field private static final EPHEMERAL_START:I = 0x400

.field private static final EPHEMERAL_STOP:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "UDPClient"

.field private static prng:Ljava/security/SecureRandom;

.field private static volatile prng_initializing:Z


# instance fields
.field private bound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng:Ljava/security/SecureRandom;

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng_initializing:Z

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient$1;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bound:Z

    .line 31
    return-void
.end method

.method static synthetic access$000()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 20
    sput-boolean p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng_initializing:Z

    return p0
.end method

.method private bind_random(Ljava/net/InetSocketAddress;)V
    .locals 5

    .prologue
    .line 34
    sget-boolean v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_1

    .line 36
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    sget-boolean v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng_initializing:Z

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 46
    const/4 v1, 0x0

    move v2, v1

    .line 48
    :goto_2
    const/16 v1, 0x400

    if-ge v2, v1, :cond_0

    .line 50
    :try_start_1
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->prng:Ljava/security/SecureRandom;

    const v3, 0xfbff

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    add-int/lit16 v3, v1, 0x400

    .line 52
    if-eqz p1, :cond_2

    .line 53
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 58
    :goto_3
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bound:Z

    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 63
    goto :goto_2

    .line 55
    :cond_2
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 37
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B
    .locals 2

    .prologue
    .line 133
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;

    invoke-direct {v1, p4, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;-><init>(J)V

    .line 137
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 138
    invoke-virtual {v1, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->connect(Ljava/net/SocketAddress;)V

    .line 139
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->send([B)V

    .line 140
    invoke-virtual {v1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->recv(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 142
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->cleanup()V

    .line 145
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->cleanup()V

    throw v0
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .locals 1

    .prologue
    .line 69
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, p1

    .line 70
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bind_random(Ljava/net/InetSocketAddress;)V

    .line 71
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bound:Z

    if-eqz v0, :cond_2

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 78
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bound:Z

    goto :goto_0
.end method

.method connect(Ljava/net/SocketAddress;)V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bound:Z

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->bind(Ljava/net/SocketAddress;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 90
    invoke-virtual {v0, p1}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    .line 91
    return-void
.end method

.method recv(I)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 108
    new-array v1, p1, [B

    .line 109
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 112
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->endTime:J

    invoke-static {v2, v4, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_0
    throw v0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v6}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 121
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v2, v0

    .line 122
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 123
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 125
    :cond_3
    long-to-int v0, v2

    .line 126
    new-array v2, v0, [B

    .line 127
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    return-object v2
.end method

.method send([B)V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/DatagramChannel;

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "UDPClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " udp client + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
