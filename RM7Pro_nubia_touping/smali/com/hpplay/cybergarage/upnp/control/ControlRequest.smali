.class public Lcom/hpplay/cybergarage/upnp/control/ControlRequest;
.super Lcom/hpplay/cybergarage/soap/SOAPRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 64
    return-void
.end method


# virtual methods
.method public isActionControl()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQueryControl()Z
    .locals 1

    .prologue
    .line 71
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->isSOAPAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected setRequestHost(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 89
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    if-lez v2, :cond_1

    .line 93
    if-lt v4, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    .line 94
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v4}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->setURI(Ljava/lang/String;Z)V

    .line 105
    const-string v1, ""

    .line 106
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_7

    .line 109
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 114
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 115
    :cond_4
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_5
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v1

    .line 120
    invoke-static {v2}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v0

    .line 123
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v1, v2

    .line 128
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->setHost(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->setRequestHost(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->setRequestPort(I)V

    .line 131
    return-void

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    move v0, v1

    move-object v1, v3

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method
