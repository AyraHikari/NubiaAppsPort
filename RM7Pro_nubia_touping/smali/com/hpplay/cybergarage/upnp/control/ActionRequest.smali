.class public Lcom/hpplay/cybergarage/upnp/control/ActionRequest;
.super Lcom/hpplay/cybergarage/upnp/control/ControlRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;-><init>()V

    .line 39
    const-string v0, "User-Agent"

    const-string v1, "UPnP/1.0"

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private createContentNode(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/Action;Lcom/hpplay/cybergarage/upnp/ArgumentList;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 120
    const-string v3, "u"

    invoke-virtual {v2, v3, v0}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "u"

    invoke-virtual {v2, v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v1

    .line 124
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 125
    invoke-virtual {p3, v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v3

    .line 126
    new-instance v4, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/xml/Node;-><init>()V

    .line 127
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hpplay/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, v4}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    const-string v0, ""

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 67
    if-gez v1, :cond_2

    .line 68
    const-string v0, ""

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getActionNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;
    .locals 7

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v2

    .line 75
    new-instance v3, Lcom/hpplay/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/upnp/ArgumentList;-><init>()V

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 77
    new-instance v4, Lcom/hpplay/cybergarage/upnp/Argument;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/upnp/Argument;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/hpplay/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v5}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hpplay/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object v3
.end method

.method public post()Lcom/hpplay/cybergarage/upnp/control/ActionResponse;
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getRequestPort()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->postMessage(Ljava/lang/String;I)Lcom/hpplay/cybergarage/soap/SOAPResponse;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;-><init>(Lcom/hpplay/cybergarage/soap/SOAPResponse;)V

    return-object v1
.end method

.method public setRequest(Lcom/hpplay/cybergarage/upnp/Action;Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getService()Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setRequestHost(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 95
    invoke-static {}, Lcom/hpplay/cybergarage/soap/SOAP;->createEnvelopeBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setEnvelopeNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 96
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getBodyNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 98
    invoke-direct {p0, v0, p1, p2}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->createContentNode(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/Action;Lcom/hpplay/cybergarage/upnp/ArgumentList;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setContent(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 102
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setSOAPAction(Ljava/lang/String;)V

    .line 109
    return-void
.end method
