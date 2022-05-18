.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;
.super Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

.field private deviceSearchResponseThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 60
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 34
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/hpplay/cybergarage/upnp/ssdp/HTTPUSocket;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 60
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 39
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public post(Ljava/lang/String;ILcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public post(Ljava/lang/String;ILcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getControlPoint()Lcom/hpplay/cybergarage/upnp/ControlPoint;

    move-result-object v1

    .line 67
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    if-ne v2, v0, :cond_1

    .line 68
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 69
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->receive()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 70
    if-nez v2, :cond_2

    .line 75
    :cond_1
    return-void

    .line 72
    :cond_2
    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->searchResponseReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

    .line 50
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SSDPSearchResponseSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->deviceSearchResponseThread:Ljava/lang/Thread;

    .line 93
    return-void
.end method
