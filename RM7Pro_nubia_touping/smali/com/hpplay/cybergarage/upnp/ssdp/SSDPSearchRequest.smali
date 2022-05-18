.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;
.super Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "upnp:rootdevice"

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x3

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;-><init>()V

    .line 31
    const-string v0, "M-SEARCH"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setMethod(Ljava/lang/String;)V

    .line 32
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setURI(Ljava/lang/String;)V

    .line 34
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "MX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "MAN"

    const-string v1, "\"ssdp:discover\""

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "User-Agent"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "DMP/2.5.8, UPnP/1.0, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setLocalAddress(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 53
    const-string v0, "239.255.255.250"

    .line 54
    invoke-static {p1}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getIPv6Address()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->setHost(Ljava/lang/String;I)V

    .line 57
    return-void
.end method
