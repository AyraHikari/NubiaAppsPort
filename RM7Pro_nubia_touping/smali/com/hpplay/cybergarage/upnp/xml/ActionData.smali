.class public Lcom/hpplay/cybergarage/upnp/xml/ActionData;
.super Lcom/hpplay/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private actionListener:Lcom/hpplay/cybergarage/upnp/control/ActionListener;

.field private ctrlRes:Lcom/hpplay/cybergarage/upnp/control/ControlResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->actionListener:Lcom/hpplay/cybergarage/upnp/control/ActionListener;

    .line 43
    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->ctrlRes:Lcom/hpplay/cybergarage/upnp/control/ControlResponse;

    .line 23
    return-void
.end method


# virtual methods
.method public getActionListener()Lcom/hpplay/cybergarage/upnp/control/ActionListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->actionListener:Lcom/hpplay/cybergarage/upnp/control/ActionListener;

    return-object v0
.end method

.method public getControlResponse()Lcom/hpplay/cybergarage/upnp/control/ControlResponse;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->ctrlRes:Lcom/hpplay/cybergarage/upnp/control/ControlResponse;

    return-object v0
.end method

.method public setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->actionListener:Lcom/hpplay/cybergarage/upnp/control/ActionListener;

    .line 37
    return-void
.end method

.method public setControlResponse(Lcom/hpplay/cybergarage/upnp/control/ControlResponse;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->ctrlRes:Lcom/hpplay/cybergarage/upnp/control/ControlResponse;

    .line 51
    return-void
.end method
