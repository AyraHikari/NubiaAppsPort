.class public Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;
.super Lcom/hpplay/cybergarage/soap/SOAPRequest;
.source "SourceFile"


# static fields
.field private static final PROPERTY:Ljava/lang/String; = "property"

.field private static final PROPERTYSET:Ljava/lang/String; = "propertyset"

.field private static final TAG:Ljava/lang/String; = "NotifyRequest"

.field private static final XMLNS:Ljava/lang/String; = "e"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/hpplay/cybergarage/soap/SOAPRequest;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->set(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 66
    return-void
.end method

.method private createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "propertyset"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v1, "e"

    const-string v2, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "property"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 145
    new-instance v2, Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v2, p1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, p2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 149
    return-object v0
.end method

.method private getProperty(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/event/Property;
    .locals 4

    .prologue
    .line 166
    new-instance v1, Lcom/hpplay/cybergarage/upnp/event/Property;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/event/Property;-><init>()V

    .line 167
    if-nez p1, :cond_0

    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 172
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 173
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/event/Property;->setName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/xml/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/event/Property;->setValue(Ljava/lang/String;)V

    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method private getVariableNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 154
    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 156
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getPropertyList()Lcom/hpplay/cybergarage/upnp/event/PropertyList;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 181
    new-instance v2, Lcom/hpplay/cybergarage/upnp/event/PropertyList;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/event/PropertyList;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getEnvelopeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v3

    .line 183
    const-string v0, "NotifyRequest"

    const-string v4, "start get getPropertyList "

    invoke-static {v0, v4}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-nez v3, :cond_0

    .line 185
    const-string v0, "NotifyRequest"

    const-string v1, "varSetNode is null"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 188
    :goto_1
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 189
    invoke-virtual {v3, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 190
    if-nez v4, :cond_1

    .line 188
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_1
    invoke-virtual {v4, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getProperty(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/event/Property;

    move-result-object v4

    .line 193
    invoke-virtual {v2, v4}, Lcom/hpplay/cybergarage/upnp/event/PropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 195
    goto :goto_0
.end method

.method public getSEQ()J
    .locals 2

    .prologue
    .line 105
    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->getSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setNT(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setNTS(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public setRequest(Lcom/hpplay/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryURL()Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getNotifyCount()J

    move-result-wide v2

    .line 116
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryPath()Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v5

    .line 120
    const-string v6, "NOTIFY"

    invoke-virtual {p0, v6}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setMethod(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, v4}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setURI(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v1, v5}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setHost(Ljava/lang/String;I)V

    .line 123
    const-string v1, "upnp:event"

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setNT(Ljava/lang/String;)V

    .line 124
    const-string v1, "upnp:propchange"

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setSID(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setSEQ(J)V

    .line 128
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setContentType(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p2, p3}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->createPropertySetNode(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setContent(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public setSEQ(J)V
    .locals 3

    .prologue
    .line 101
    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    const-string v0, "SID"

    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
