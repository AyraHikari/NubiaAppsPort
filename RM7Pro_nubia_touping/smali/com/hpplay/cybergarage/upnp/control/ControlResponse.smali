.class public Lcom/hpplay/cybergarage/upnp/control/ControlResponse;
.super Lcom/hpplay/cybergarage/soap/SOAPResponse;
.source "SourceFile"


# static fields
.field public static final FAULT_CODE:Ljava/lang/String; = "Client"

.field public static final FAULT_STRING:Ljava/lang/String; = "UPnPError"


# instance fields
.field private upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;-><init>()V

    .line 108
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 34
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setServer(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;-><init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V

    .line 108
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 39
    return-void
.end method

.method private createFaultResponseNode(I)Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 101
    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->createFaultResponseNode(ILjava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private createFaultResponseNode(ILjava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 5

    .prologue
    .line 66
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "s:Fault"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "faultcode"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v2, "s:Client"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 74
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "faultstring"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v2, "UPnPError"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 79
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "detail"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 83
    new-instance v2, Lcom/hpplay/cybergarage/xml/Node;

    const-string v3, "UPnPError"

    invoke-direct {v2, v3}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v3, "xmlns"

    const-string v4, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v2, v3, v4}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 88
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v3, "errorCode"

    invoke-direct {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setValue(I)V

    .line 90
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 93
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v3, "errorDescription"

    invoke-direct {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, p2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 97
    return-object v0
.end method

.method private getUPnPErrorCodeNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getUPnPErrorDescriptionNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "errorDescription"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getUPnPErrorNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getFaultDetailNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "UPnPError"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getUPnPError()Lcom/hpplay/cybergarage/upnp/UPnPStatus;
    .locals 3

    .prologue
    .line 151
    .line 152
    const-string v0, ""

    .line 153
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorCode()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorDescription()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v2, v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 156
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->upnpErr:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUPnPErrorCode()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorCodeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 137
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getUPnPErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPErrorDescriptionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setFaultResponse(I)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setFaultResponse(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public setFaultResponse(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setStatusCode(I)V

    .line 48
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->createFaultResponseNode(ILjava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 52
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setContent(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 54
    return-void
.end method
