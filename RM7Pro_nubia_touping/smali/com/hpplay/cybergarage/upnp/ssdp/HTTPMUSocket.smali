.class public Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "hpplay-HTTPMUSocket"


# instance fields
.field private ssdpMultiGroup:Ljava/net/InetSocketAddress;

.field private ssdpMultiIf:Ljava/net/NetworkInterface;

.field private ssdpMultiSock:Ljava/net/MulticastSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 57
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 58
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 57
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 58
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized close()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    .line 173
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 174
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    :try_start_2
    const-string v1, "hpplay-HTTPMUSocket"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->close()Z

    .line 73
    return-void
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const-string v0, ""

    .line 91
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 84
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 86
    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    .line 87
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_3
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getMulticastInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMulticastPort()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/MulticastSocket;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    return-object v0
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v1, "hpplay-HTTPMUSocket"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 145
    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    .line 146
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 147
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 148
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 149
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    .line 150
    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    .line 151
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiIf:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "hpplay-HTTPMUSocket"

    invoke-static {v1, v4, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Lcom/hpplay/cybergarage/http/HTTPRequest;)Z
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public post(Lcom/hpplay/cybergarage/http/HTTPRequest;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public receive()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4

    .prologue
    .line 231
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 232
    new-instance v1, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 233
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiSock:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v0}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V

    .line 252
    return-object v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v2, "hpplay-HTTPMUSocket"

    invoke-static {v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Multicast socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->send(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 193
    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 194
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    .line 198
    :goto_0
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;->ssdpMultiGroup:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    .line 200
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getTimeToLive()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 201
    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    .line 202
    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    .line 207
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 196
    :cond_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "hpplay-HTTPMUSocket"

    invoke-static {v1, v5, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const/4 v0, 0x0

    goto :goto_1
.end method
