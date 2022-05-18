.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;
.super Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "hpplay-SSDPNotifySocket"


# instance fields
.field private controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

.field private deviceNotifyThread:Ljava/lang/Thread;

.field private isRuning:Z

.field private useIPv6Address:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPMUSocket;-><init>()V

    .line 71
    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 100
    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 57
    const-string v0, "239.255.255.250"

    .line 58
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 59
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 60
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 61
    iput-boolean v3, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    .line 63
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->open(Ljava/lang/String;ILjava/lang/String;)Z

    .line 64
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public isRuning()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->isRuning:Z

    return v0
.end method

.method public post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z
    .locals 3

    .prologue
    .line 89
    const-string v0, "239.255.255.250"

    .line 90
    iget-boolean v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->useIPv6Address:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 91
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/http/HTTPRequest;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v1

    .line 106
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    if-ne v2, v0, :cond_1

    .line 107
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->isRuning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->receive()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 118
    if-eqz v2, :cond_0

    .line 122
    :try_start_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getMulticastInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 123
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getHostInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->notifyReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "hpplay-SSDPNotifySocket"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->isRuning:Z

    .line 136
    return-void

    .line 113
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 75
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "hpplay.SSDPNotifySocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getMulticastAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->getMulticastPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 149
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->isRuning:Z

    .line 159
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->deviceNotifyThread:Ljava/lang/Thread;

    .line 162
    return-void
.end method
