.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;
.super Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private deviceSearchThread:Ljava/lang/Thread;

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 114
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 54
    invoke-virtual {p0, p1, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 114
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 63
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 64
    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet6Address;)Z

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    check-cast p1, Ljava/net/Inet4Address;

    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/net/Inet4Address;)Z

    goto :goto_0
.end method


# virtual methods
.method public addSearchListener(Lcom/hpplay/cybergarage/upnp/device/SearchListener;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public open(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v0, "239.255.255.250"

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 103
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 104
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 105
    iput-boolean v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 107
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 84
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 91
    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p2, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/net/Inet4Address;)Z
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 75
    const-string v0, "239.255.255.250"

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/net/Inet6Address;)Z
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->useIPv6Address:Z

    .line 80
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->open(Ljava/lang/String;ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public performSearchListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 126
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/SearchListener;

    .line 128
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/SearchListener;->deviceSearchReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 126
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public removeSearchListener(Lcom/hpplay/cybergarage/upnp/device/SearchListener;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    if-ne v1, v0, :cond_1

    .line 142
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->receive()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 153
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isDiscover()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->performSearchListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 160
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPSearchSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->getMulticastPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 173
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->close()Z

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocket;->deviceSearchThread:Ljava/lang/Thread;

    .line 181
    return-void
.end method
