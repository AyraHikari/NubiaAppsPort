.class public Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;
.super Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DatagramProcessor"


# instance fields
.field protected isMulticast:Z

.field private lastPacket:J

.field protected loopbackModeDisabled:Z

.field protected maxPayloadSize:I

.field protected reuseAddress:Z

.field protected socket:Ljava/net/DatagramSocket;

.field protected ttl:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/net/InetAddress;ILcom/hpplay/sdk/source/mdns/net/PacketListener;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;ILcom/hpplay/sdk/source/mdns/net/PacketListener;)V

    .line 21
    const/16 v2, 0x200

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->maxPayloadSize:I

    .line 22
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    .line 23
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->loopbackModeDisabled:Z

    .line 24
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->reuseAddress:Z

    .line 25
    const/16 v2, 0xff

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->ttl:I

    .line 33
    const-string v2, "DatagramProcessor"

    const-string v3, "-------start create DatagramProcessor-----"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    iput-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    .line 40
    :cond_0
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    if-eqz v2, :cond_7

    .line 41
    new-instance v2, Ljava/net/MulticastSocket;

    invoke-direct {v2, p3}, Ljava/net/MulticastSocket;-><init>(I)V

    .line 45
    const-string v3, "mdns_multicast_loopback"

    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 46
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "t"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "yes"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "y"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->loopbackModeDisabled:Z

    .line 49
    :cond_3
    const-string v0, "mdns_socket_ttl"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 51
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->ttl:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->reuseAddress:Z

    .line 64
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->loopbackModeDisabled:Z

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->setLoopbackMode(Z)V

    .line 65
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->reuseAddress:Z

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 66
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->ttl:I

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 67
    invoke-virtual {v2, p2}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 68
    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    .line 72
    :goto_1
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 83
    :cond_5
    if-eqz v0, :cond_6

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->mtu:I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    :cond_6
    :goto_2
    if-nez v0, :cond_9

    .line 92
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 93
    const/16 v0, 0x5dc

    move v1, v0

    .line 94
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 96
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 97
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v0

    .line 98
    if-ge v0, v1, :cond_a

    :goto_4
    move v1, v0

    .line 102
    goto :goto_3

    .line 70
    :cond_7
    new-instance v0, Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const/4 v0, 0x0

    .line 88
    const-string v1, "DatagramProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting MTU from Network Interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Using default MTU."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 103
    :cond_8
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->mtu:I

    .line 105
    :cond_9
    const-string v0, "DatagramProcessor"

    const-string v1, "-------start end -----"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->mtu:I

    add-int/lit8 v0, v0, -0x28

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->maxPayloadSize:I

    .line 107
    return-void

    .line 52
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->close()V

    .line 113
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    if-eqz v0, :cond_0

    .line 115
    :try_start_0
    const-string v0, "DatagramProcessor"

    const-string v1, "-------release  -----"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 124
    :cond_1
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    const-string v0, "DatagramProcessor"

    const-string v1, "------------------------release socket "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxPayloadSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->maxPayloadSize:I

    return v0
.end method

.method public getTTL()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->ttl:I

    return v0
.end method

.method public isLoopbackModeDisabled()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->loopbackModeDisabled:Z

    return v0
.end method

.method public isMulticast()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    return v0
.end method

.method public isOperational()Z
    .locals 6

    .prologue
    .line 148
    invoke-super {p0}, Lcom/hpplay/sdk/source/mdns/net/NetworkProcessor;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->lastPacket:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReuseAddress()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->reuseAddress:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->lastPacket:J

    .line 153
    new-instance v0, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->listener:Lcom/hpplay/sdk/source/mdns/net/PacketListener;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;-><init>(Lcom/hpplay/sdk/source/mdns/net/PacketListener;)V

    .line 154
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->start()V

    .line 155
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->exit:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isClose:Z

    if-nez v1, :cond_1

    .line 158
    :try_start_0
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->mtu:I

    new-array v1, v1, [B

    .line 159
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 160
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->lastPacket:J

    .line 165
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    new-instance v1, Lcom/hpplay/sdk/source/mdns/net/Packet;

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/net/Packet;-><init>(Ljava/net/DatagramPacket;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->updateReceiveData(Lcom/hpplay/sdk/source/mdns/net/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->exit:Z

    if-nez v1, :cond_1

    .line 171
    const-string v1, "DatagramProcessor"

    const-string v2, "Error receiving data from  executors is release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/net/DNSParserThread;->release()V

    .line 177
    const-string v0, "DatagramProcessor"

    const-string v1, " runnable exit "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public send([B)V
    .locals 5

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->exit:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v0, p1

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->address:Ljava/net/InetAddress;

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->port:I

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->isMulticast:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    check-cast v0, Ljava/net/MulticastSocket;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v2, "no route to host"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/net/DatagramProcessor;->close()V

    .line 198
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" occured while sending datagram to \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/IOException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 200
    throw v2
.end method
