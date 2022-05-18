.class public Lcom/hpplay/cybergarage/upnp/xml/ServiceData;
.super Lcom/hpplay/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private controlActionListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private descriptionURL:Ljava/lang/String;

.field private scpdNode:Lcom/hpplay/cybergarage/xml/Node;

.field private sid:Ljava/lang/String;

.field private subscriberList:Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 34
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->controlActionListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->scpdNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 58
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->subscriberList:Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->descriptionURL:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->timeout:J

    .line 28
    return-void
.end method


# virtual methods
.method public getControlActionListenerList()Lcom/hpplay/cybergarage/util/ListenerList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->controlActionListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    return-object v0
.end method

.method public getDescriptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->descriptionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->scpdNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->subscriberList:Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->timeout:J

    return-wide v0
.end method

.method public setDescriptionURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->descriptionURL:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->scpdNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 52
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->sid:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->timeout:J

    .line 104
    return-void
.end method
