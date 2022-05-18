.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dgmPacket:Ljava/net/DatagramPacket;

.field private localAddr:Ljava/lang/String;

.field public packetBytes:[B

.field private timeStamp:J


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 41
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    .line 42
    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    .line 116
    :goto_0
    return-object v0

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    .line 111
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->packetBytes:[B

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    const-string v1, "SSDPP"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->W(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getDatagramPacket()Ljava/net/DatagramPacket;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->dgmPacket:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostInetAddress()Ljava/net/InetAddress;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    const-string v0, "127.0.0.1"

    .line 169
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 171
    if-ltz v2, :cond_1

    .line 172
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 174
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getCacheControl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Location"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMAN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMX()I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getIntegerValue([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getDatagramPacket()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public getST()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "Server"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    return-wide v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/NTS;->isAlive(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isByeBye()Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getNTS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/NTS;->isByeBye(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDiscover()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getMAN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/MAN;->isDiscover(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRootDevice()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getNT()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/NT;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/USN;->isRootDevice(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->localAddr:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->timeStamp:J

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
