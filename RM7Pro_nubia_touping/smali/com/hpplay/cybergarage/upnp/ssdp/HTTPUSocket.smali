.class public Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cyber-HTTPUSocket"


# instance fields
.field private localAddr:Ljava/lang/String;

.field private ssdpUniSock:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->open()Z

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->open(I)Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->open(Ljava/lang/String;I)Z

    .line 58
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 170
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    if-nez v1, :cond_0

    .line 181
    :goto_0
    return v0

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "Cyber-HTTPUSocket"

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 66
    return-void
.end method

.method public getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 94
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "Cyber-HTTPUSocket"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const-string v0, "127.0.0.1"

    goto :goto_0
.end method

.method public getUDPSocket()Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public open()Z
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 105
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "Cyber-HTTPUSocket"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 153
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 154
    new-instance v2, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    .line 155
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 156
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->close()Z

    .line 119
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 120
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->setLocalAddress(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "Cyber-HTTPUSocket"

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    throw v0

    .line 124
    :catch_1
    move-exception v0

    .line 125
    const-string v1, "Cyber-HTTPUSocket"

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 190
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3, v0, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 192
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "Cyber-HTTPUSocket"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 4

    .prologue
    .line 205
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 206
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    array-length v2, v1

    invoke-direct {v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;-><init>([BI)V

    .line 208
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->setLocalAddress(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->ssdpUniSock:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;->localAddr:Ljava/lang/String;

    .line 76
    return-void
.end method
