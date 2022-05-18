.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;
.super Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPResponse;-><init>()V

    .line 29
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setStatusCode(I)V

    .line 30
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setCacheControl(I)V

    .line 31
    const-string v0, "Server"

    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method
