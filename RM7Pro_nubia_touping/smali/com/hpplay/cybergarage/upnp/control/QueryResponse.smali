.class public Lcom/hpplay/cybergarage/upnp/control/QueryResponse;
.super Lcom/hpplay/cybergarage/upnp/control/ControlResponse;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;-><init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V

    .line 33
    return-void
.end method

.method private createResponseNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 80
    const-string v1, "u"

    const-string v2, "QueryStateVariableResponse"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "u"

    const-string v2, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 84
    const-string v2, "return"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 88
    return-object v0
.end method

.method private getReturnNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 41
    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getReturnValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getReturnNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string v0, ""

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setResponse(Lcom/hpplay/cybergarage/upnp/StateVariable;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 67
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->setStatusCode(I)V

    .line 69
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 70
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->createResponseNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 73
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->setContent(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 76
    return-void
.end method
