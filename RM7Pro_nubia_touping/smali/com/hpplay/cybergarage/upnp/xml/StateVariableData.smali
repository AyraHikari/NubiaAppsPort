.class public Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;
.super Lcom/hpplay/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# instance fields
.field private queryListener:Lcom/hpplay/cybergarage/upnp/control/QueryListener;

.field private queryRes:Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryListener:Lcom/hpplay/cybergarage/upnp/control/QueryListener;

    .line 59
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryRes:Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    .line 25
    return-void
.end method


# virtual methods
.method public getQueryListener()Lcom/hpplay/cybergarage/upnp/control/QueryListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryListener:Lcom/hpplay/cybergarage/upnp/control/QueryListener;

    return-object v0
.end method

.method public getQueryResponse()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryRes:Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryListener:Lcom/hpplay/cybergarage/upnp/control/QueryListener;

    .line 53
    return-void
.end method

.method public setQueryResponse(Lcom/hpplay/cybergarage/upnp/control/QueryResponse;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->queryRes:Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    .line 67
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->value:Ljava/lang/String;

    .line 39
    return-void
.end method
