.class public Lcom/hpplay/cybergarage/upnp/Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;
    }
.end annotation


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "action"

.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private actionNode:Lcom/hpplay/cybergarage/xml/Node;

.field private mResponseCallbackLisener:Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;

.field private mutex:Lcom/hpplay/cybergarage/util/Mutex;

.field private serviceNode:Lcom/hpplay/cybergarage/xml/Node;

.field private upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hpplay/cybergarage/upnp/Action;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 399
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 93
    invoke-direct {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 94
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->actionNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 399
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Action;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 84
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "action"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->actionNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 399
    new-instance v0, Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Action;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 89
    iput-object p2, p0, Lcom/hpplay/cybergarage/upnp/Action;->actionNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 90
    return-void
.end method

.method private clearOutputAgumentValues()V
    .locals 5

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    .line 249
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 250
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :cond_1
    return-void
.end method

.method private getActionData()Lcom/hpplay/cybergarage/upnp/xml/ActionData;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    .line 278
    if-nez v0, :cond_0

    .line 279
    new-instance v0, Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;-><init>()V

    .line 280
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 281
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->setNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 283
    :cond_0
    return-object v0
.end method

.method private getControlResponse()Lcom/hpplay/cybergarage/upnp/control/ControlResponse;
    .locals 1

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionData()Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->getControlResponse()Lcom/hpplay/cybergarage/upnp/control/ControlResponse;

    move-result-object v0

    return-object v0
.end method

.method private getServiceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public static isActionNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 116
    const-string v0, "action"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setControlResponse(Lcom/hpplay/cybergarage/upnp/control/ControlResponse;)V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionData()Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->setControlResponse(Lcom/hpplay/cybergarage/upnp/control/ControlResponse;)V

    .line 326
    return-void
.end method


# virtual methods
.method public getActionListener()Lcom/hpplay/cybergarage/upnp/control/ActionListener;
    .locals 1

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionData()Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->getActionListener()Lcom/hpplay/cybergarage/upnp/control/ActionListener;

    move-result-object v0

    return-object v0
.end method

.method public getActionNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->actionNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getArgument(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Argument;
    .locals 6

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    .line 199
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 200
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    .line 202
    if-nez v4, :cond_1

    .line 199
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 207
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getArgumentIntegerValue(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v0

    .line 266
    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v0

    goto :goto_0
.end method

.method public getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;
    .locals 7

    .prologue
    .line 138
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ArgumentList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "argumentList"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 140
    if-nez v2, :cond_1

    .line 150
    :cond_0
    return-object v0

    .line 142
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 143
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 144
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 145
    invoke-static {v4}, Lcom/hpplay/cybergarage/upnp/Argument;->isArgumentNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 143
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    new-instance v5, Lcom/hpplay/cybergarage/upnp/Argument;

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/hpplay/cybergarage/upnp/Argument;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 148
    invoke-virtual {v0, v5}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getArgumentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    const-string v0, ""

    .line 261
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getControlStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getControlResponse()Lcom/hpplay/cybergarage/upnp/control/ControlResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->getUPnPError()Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    move-result-object v0

    return-object v0
.end method

.method public getInputArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;
    .locals 6

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    .line 173
    new-instance v3, Lcom/hpplay/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/upnp/ArgumentList;-><init>()V

    .line 174
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 175
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Argument;->isInDirection()Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_1
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    .line 186
    new-instance v3, Lcom/hpplay/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/upnp/ArgumentList;-><init>()V

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 188
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Argument;->isOutDirection()Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    return-object v3
.end method

.method public getService()Lcom/hpplay/cybergarage/upnp/Service;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Service;

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/Service;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->lock()V

    .line 105
    return-void
.end method

.method public performActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionRequest;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionListener()Lcom/hpplay/cybergarage/upnp/control/ActionListener;

    move-result-object v1

    .line 300
    if-nez v1, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    .line 302
    :cond_0
    new-instance v2, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 303
    const/16 v3, 0x191

    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/Action;->setStatus(I)V

    .line 304
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->clearOutputAgumentValues()V

    .line 305
    invoke-interface {v1, p0}, Lcom/hpplay/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lcom/hpplay/cybergarage/upnp/Action;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 306
    invoke-virtual {v2, p0}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->setResponse(Lcom/hpplay/cybergarage/upnp/Action;)V

    .line 311
    :goto_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->print()V

    .line 312
    invoke-virtual {p1, v2}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getStatus()Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->getCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->setFaultResponse(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public postControlAction(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getInputArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 350
    new-instance v3, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v3, p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v3, p0, v2}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->setRequest(Lcom/hpplay/cybergarage/upnp/Action;Lcom/hpplay/cybergarage/upnp/ArgumentList;)V

    .line 352
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->print()V

    .line 353
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->post()Lcom/hpplay/cybergarage/upnp/control/ActionResponse;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->print()V

    .line 355
    invoke-direct {p0, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setControlResponse(Lcom/hpplay/cybergarage/upnp/control/ControlResponse;)V

    .line 357
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->getStatusCode()I

    move-result v4

    .line 358
    invoke-virtual {p0, v4}, Lcom/hpplay/cybergarage/upnp/Action;->setStatus(I)V

    .line 359
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->getResponse()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v4

    .line 361
    :try_start_0
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getHeader()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Play"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getHeader()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SetAVTransportURI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->getContent()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    iget-object v6, p0, Lcom/hpplay/cybergarage/upnp/Action;->mResponseCallbackLisener:Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;

    if-eqz v6, :cond_1

    .line 364
    iget-object v6, p0, Lcom/hpplay/cybergarage/upnp/Action;->mResponseCallbackLisener:Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getContent()[B

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;->onCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    invoke-virtual {v1, v4}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->setResArgs(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    .line 375
    :goto_0
    return v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    const/16 v1, 0x192

    const-string v2, "Action succesfully delivered but invalid arguments returned."

    invoke-virtual {p0, v1, v2}, Lcom/hpplay/cybergarage/upnp/Action;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public print()V
    .locals 9

    .prologue
    .line 383
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    .line 386
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 387
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->getArgument(I)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v4

    .line 389
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Argument;->getDirection()Ljava/lang/String;

    move-result-object v3

    .line 391
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionData()Lcom/hpplay/cybergarage/upnp/xml/ActionData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/ActionData;->setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V

    .line 296
    return-void
.end method

.method public setArgumentList(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    .locals 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "argumentList"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "argumentList"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    move-object v1, v0

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/Argument;

    .line 164
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getService()Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hpplay/cybergarage/upnp/Argument;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 165
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Argument;->getArgumentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_1

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->removeAllNodes()V

    move-object v1, v0

    goto :goto_0

    .line 168
    :cond_1
    return-void
.end method

.method public setArgumentValue(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Argument;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0, p2}, Lcom/hpplay/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArgumentValues(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->set(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V

    .line 217
    return-void
.end method

.method public setInArgumentValues(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->setReqArgs(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V

    .line 225
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setOutArgumentValues(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->setResArgs(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V

    .line 233
    return-void
.end method

.method public setResponseCallbackLisener(Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Action;->mResponseCallbackLisener:Lcom/hpplay/cybergarage/upnp/Action$ResponseCallbackLisener;

    .line 344
    return-void
.end method

.method setService(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 67
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/Argument;

    .line 70
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Argument;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 407
    invoke-static {p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/Action;->setStatus(ILjava/lang/String;)V

    .line 408
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setCode(I)V

    .line 403
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->upnpStatus:Lcom/hpplay/cybergarage/upnp/UPnPStatus;

    invoke-virtual {v0, p2}, Lcom/hpplay/cybergarage/upnp/UPnPStatus;->setDescription(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Action;->userData:Ljava/lang/Object;

    .line 422
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Action;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->unlock()V

    .line 109
    return-void
.end method
