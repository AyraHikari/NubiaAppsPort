.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;
.super Lcom/hpplay/cybergarage/http/HTTPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>()V

    .line 32
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setVersion(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getBootId()I
    .locals 1

    .prologue
    .line 109
    const-string v0, "BOOTID.UPNP.ORG"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getIntegerHeaderValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 96
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "NT"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNTS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "NTS"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "USN"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBootId(I)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "BOOTID.UPNP.ORG"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "Cache-Control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max-age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
