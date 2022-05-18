.class public Lcom/hpplay/cybergarage/upnp/Argument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final ELEM_NAME:Ljava/lang/String; = "argument"

.field public static final IN:Ljava/lang/String; = "in"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final OUT:Ljava/lang/String; = "out"

.field private static final RELATED_STATE_VARIABLE:Ljava/lang/String; = "relatedStateVariable"


# instance fields
.field private argumentNode:Lcom/hpplay/cybergarage/xml/Node;

.field private serviceNode:Lcom/hpplay/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->argumentNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 85
    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/Argument;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->argumentNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 90
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Argument;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 94
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Argument;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 95
    iput-object p2, p0, Lcom/hpplay/cybergarage/upnp/Argument;->argumentNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Argument;-><init>()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Argument;->setName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private getArgumentData()Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;-><init>()V

    .line 182
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->setNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 185
    :cond_0
    return-object v0
.end method

.method private getServiceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public static isArgumentNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 109
    const-string v0, "argument"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAction()Lcom/hpplay/cybergarage/upnp/Action;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Action;

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getActionNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 65
    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 70
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/Action;->isActionNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method public getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->argumentNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 207
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelatedStateVariable()Lcom/hpplay/cybergarage/upnp/StateVariable;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getService()Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 167
    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getRelatedStateVariableName()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRelatedStateVariableName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/hpplay/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Service;

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/Service;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentData()Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInDirection()Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOutDirection()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public setRelatedStateVariableName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "relatedStateVariable"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method setService(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    .line 61
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Argument;->userData:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public setValue(I)V
    .locals 1

    .prologue
    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentData()Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/ArgumentData;->setValue(Ljava/lang/String;)V

    .line 194
    return-void
.end method
