.class public Lcom/hpplay/cybergarage/upnp/StateVariable;
.super Lcom/hpplay/cybergarage/upnp/xml/NodeData;
.source "SourceFile"


# static fields
.field private static final DATATYPE:Ljava/lang/String; = "dataType"

.field private static final DEFAULT_VALUE:Ljava/lang/String; = "defaultValue"

.field public static final ELEM_NAME:Ljava/lang/String; = "stateVariable"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SENDEVENTS:Ljava/lang/String; = "sendEvents"

.field private static final SENDEVENTS_NO:Ljava/lang/String; = "no"

.field private static final SENDEVENTS_YES:Ljava/lang/String; = "yes"


# instance fields
.field private serviceNode:Lcom/hpplay/cybergarage/xml/Node;

.field private stateVariableNode:Lcom/hpplay/cybergarage/xml/Node;

.field private upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 388
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 433
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 96
    iput-object v1, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 97
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "stateVariable"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->stateVariableNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/xml/NodeData;-><init>()V

    .line 388
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 102
    iput-object p2, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->stateVariableNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 103
    return-void
.end method

.method public static isStateVariableNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 110
    const-string v0, "stateVariable"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setQueryResponse(Lcom/hpplay/cybergarage/upnp/control/QueryResponse;)V
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->setQueryResponse(Lcom/hpplay/cybergarage/upnp/control/QueryResponse;)V

    .line 358
    return-void
.end method


# virtual methods
.method public getAllowedValueList()Lcom/hpplay/cybergarage/upnp/AllowedValueList;
    .locals 6

    .prologue
    .line 227
    new-instance v0, Lcom/hpplay/cybergarage/upnp/AllowedValueList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;-><init>()V

    .line 228
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "allowedValueList"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 229
    if-nez v2, :cond_1

    .line 230
    const/4 v0, 0x0

    .line 239
    :cond_0
    return-object v0

    .line 231
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 232
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 233
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 234
    invoke-static {v4}, Lcom/hpplay/cybergarage/upnp/AllowedValue;->isAllowedValueNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    new-instance v5, Lcom/hpplay/cybergarage/upnp/AllowedValue;

    invoke-direct {v5, v4}, Lcom/hpplay/cybergarage/upnp/AllowedValue;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 237
    invoke-virtual {v0, v5}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAllowedValueRange()Lcom/hpplay/cybergarage/upnp/AllowedValueRange;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 284
    if-nez v1, :cond_0

    .line 285
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getDataType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryListener()Lcom/hpplay/cybergarage/upnp/control/QueryListener;
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->getQueryListener()Lcom/hpplay/cybergarage/upnp/control/QueryListener;

    move-result-object v0

    return-object v0
.end method

.method public getQueryResponse()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->getQueryResponse()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    return-object v0
.end method

.method public getQueryStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getQueryResponse()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getUPnPError()Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/hpplay/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 82
    if-nez v1, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Service;

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/Service;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getServiceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;-><init>()V

    .line 182
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->setNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method public getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->stateVariableNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowedValueList()Z
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getAllowedValueList()Lcom/hpplay/cybergarage/upnp/AllowedValueList;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAllowedValueRange()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getAllowedValueRange()Lcom/hpplay/cybergarage/upnp/AllowedValueRange;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendEvents()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    const-string v3, "sendEvents"

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/xml/Node;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public performQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryRequest;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getQueryListener()Lcom/hpplay/cybergarage/upnp/control/QueryListener;

    move-result-object v1

    .line 331
    if-nez v1, :cond_0

    .line 332
    const/4 v0, 0x0

    .line 345
    :goto_0
    return v0

    .line 333
    :cond_0
    new-instance v2, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;-><init>()V

    .line 334
    new-instance v3, Lcom/hpplay/cybergarage/upnp/StateVariable;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/upnp/StateVariable;-><init>()V

    .line 335
    invoke-virtual {v3, p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->set(Lcom/hpplay/cybergarage/upnp/StateVariable;)V

    .line 336
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 337
    const/16 v4, 0x194

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setStatus(I)V

    .line 338
    invoke-interface {v1, v3}, Lcom/hpplay/cybergarage/upnp/control/QueryListener;->queryControlReceived(Lcom/hpplay/cybergarage/upnp/StateVariable;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 339
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->setResponse(Lcom/hpplay/cybergarage/upnp/StateVariable;)V

    .line 344
    :goto_1
    invoke-virtual {p1, v2}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public postQuerylAction()Z
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;-><init>()V

    .line 370
    invoke-virtual {v0, p0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->setRequest(Lcom/hpplay/cybergarage/upnp/StateVariable;)V

    .line 371
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->print()V

    .line 372
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->post()Lcom/hpplay/cybergarage/upnp/control/QueryResponse;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->print()V

    .line 374
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setQueryResponse(Lcom/hpplay/cybergarage/upnp/control/QueryResponse;)V

    .line 376
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    .line 381
    :goto_0
    return v0

    .line 380
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/QueryResponse;->getReturnValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(Lcom/hpplay/cybergarage/upnp/StateVariable;)V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setName(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getDataType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setDataType(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setSendEvents(Z)V

    .line 171
    return-void
.end method

.method public setAllowedValueList(Lcom/hpplay/cybergarage/upnp/AllowedValueList;)V
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueList"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 261
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 262
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v0, "allowedValueList"

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/AllowedValueList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 264
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/AllowedValue;

    .line 267
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/AllowedValue;->getAllowedValueNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 271
    return-void
.end method

.method public setAllowedValueRange(Lcom/hpplay/cybergarage/upnp/AllowedValueRange;)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueList"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 308
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "allowedValueRange"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    .line 309
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/AllowedValueRange;->getAllowedValueRangeNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 311
    return-void
.end method

.method public setDataType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "defaultValue"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V

    .line 327
    return-void
.end method

.method public setSendEvents(Z)V
    .locals 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "sendEvents"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void

    .line 150
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method setServiceNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 78
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 396
    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setStatus(ILjava/lang/String;)V

    .line 397
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 392
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/StateVariable;->userData:Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setValue(J)V
    .locals 1

    .prologue
    .line 215
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableData()Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/StateVariableData;->setValue(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getService()Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0, p0}, Lcom/hpplay/cybergarage/upnp/Service;->notify(Lcom/hpplay/cybergarage/upnp/StateVariable;)V

    goto :goto_0
.end method
