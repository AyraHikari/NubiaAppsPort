.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;
.super Lcom/hpplay/cybergarage/http/HTTPResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 38
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setVersion(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getBootId()I
    .locals 1

    .prologue
    .line 115
    const-string v0, "BOOTID.UPNP.ORG"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getIntegerHeaderValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 102
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->getLeaseTime(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMYNAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "ST"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "USN"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBootId(I)V
    .locals 1

    .prologue
    .line 111
    const-string v0, "BOOTID.UPNP.ORG"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;I)V

    .line 112
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 3

    .prologue
    .line 98
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

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setMYNAME(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "MYNAME"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setST(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setUSN(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
