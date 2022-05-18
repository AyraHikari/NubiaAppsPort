.class public Lcom/hpplay/cybergarage/upnp/control/QueryRequest;
.super Lcom/hpplay/cybergarage/upnp/control/ControlRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 38
    return-void
.end method

.method private createContentNode(Lcom/hpplay/cybergarage/upnp/StateVariable;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 92
    const-string v1, "u"

    const-string v2, "QueryStateVariable"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "u"

    const-string v2, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 96
    const-string v2, "u"

    const-string v3, "varName"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 100
    return-object v0
.end method

.method private getVarNameNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getVarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getVarNameNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    const-string v0, ""

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public post()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getRequestPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->postMessage(Ljava/lang/String;I)Lcom/hpplay/cybergarage/soap/SOAPResponse;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;-><init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V

    return-object v1
.end method

.method public setRequest(Lcom/hpplay/cybergarage/upnp/StateVariable;)V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getService()Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->setRequestHost(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 76
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 77
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 79
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->createContentNode(Lcom/hpplay/cybergarage/upnp/StateVariable;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->setContent(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 83
    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->setSOAPAction(Ljava/lang/String;)V

    .line 84
    return-void
.end method
