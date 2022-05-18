.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;
.super Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPRequest;-><init>()V

    .line 26
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 27
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setURI(Ljava/lang/String;)V

    .line 28
    return-void
.end method
