.class public Lcom/hpplay/cybergarage/upnp/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONFIG_ID:Ljava/lang/String; = "configId"

.field private static final CONTROL_URL:Ljava/lang/String; = "controlURL"

.field public static final ELEM_NAME:Ljava/lang/String; = "service"

.field private static final EVENT_SUB_URL:Ljava/lang/String; = "eventSubURL"

.field public static final MAJOR:Ljava/lang/String; = "major"

.field public static final MAJOR_VALUE:Ljava/lang/String; = "1"

.field public static final MINOR:Ljava/lang/String; = "minor"

.field public static final MINOR_VALUE:Ljava/lang/String; = "0"

.field private static final SCPDURL:Ljava/lang/String; = "SCPDURL"

.field public static final SCPD_ROOTNODE:Ljava/lang/String; = "scpd"

.field public static final SCPD_ROOTNODE_NS:Ljava/lang/String; = "urn:schemas-upnp-org:service-1-0"

.field private static final SERVICE_ID:Ljava/lang/String; = "serviceId"

.field private static final SERVICE_TYPE:Ljava/lang/String; = "serviceType"

.field public static final SPEC_VERSION:Ljava/lang/String; = "specVersion"

.field private static final TAG:Ljava/lang/String; = "Cyber-Service"


# instance fields
.field private mutex:Lcom/hpplay/cybergarage/util/Mutex;

.field private serviceNode:Lcom/hpplay/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "service"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Service;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 133
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "specVersion"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "major"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 139
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "minor"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 140
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 144
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "scpd"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v2, "xmlns"

    const-string v3, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/xml/Node;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 147
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 151
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Service;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 152
    return-void
.end method

.method private getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getNotifyServiceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyServiceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRootNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 441
    :goto_0
    return-object v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 398
    if-nez v3, :cond_1

    move-object v0, v1

    .line 399
    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v5

    .line 405
    if-eqz v5, :cond_2

    .line 407
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 411
    :try_start_0
    invoke-direct {p0, v6}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    :goto_1
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v2, v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0

    .line 412
    :catch_0
    move-exception v5

    .line 414
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 424
    :cond_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v2, v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 433
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/hpplay/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 437
    :catch_2
    move-exception v0

    .line 438
    const-string v2, "Cyber-Service"

    invoke-static {v2, v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 441
    goto :goto_0
.end method

.method private getSCPDNode(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 386
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 387
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getSCPDNode(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method private getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    .line 569
    if-nez v0, :cond_0

    .line 570
    new-instance v0, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;-><init>()V

    .line 571
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 572
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 574
    :cond_0
    return-object v0
.end method

.method public static isServiceNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "service"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isURL(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 260
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    .line 269
    :cond_1
    :goto_0
    return v0

    .line 262
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 263
    if-eq v2, v0, :cond_1

    .line 265
    invoke-static {p1, v1}, Lcom/hpplay/cybergarage/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 267
    if-eq v2, v0, :cond_1

    move v0, v1

    .line 269
    goto :goto_0
.end method

.method private notify(Lcom/hpplay/cybergarage/upnp/event/Subscriber;Lcom/hpplay/cybergarage/upnp/StateVariable;)Z
    .locals 5

    .prologue
    .line 695
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 696
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryHost()Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getDeliveryPort()I

    move-result v3

    .line 701
    new-instance v4, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;-><init>()V

    .line 702
    invoke-virtual {v4, p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->setRequest(Lcom/hpplay/cybergarage/upnp/event/Subscriber;Ljava/lang/String;Ljava/lang/String;)Z

    .line 704
    invoke-virtual {v4, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->post(Ljava/lang/String;I)Lcom/hpplay/cybergarage/http/HTTPResponse;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 710
    :goto_0
    return v0

    .line 708
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->incrementNotifyCount()V

    .line 710
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAction(Lcom/hpplay/cybergarage/upnp/Action;)V
    .locals 3

    .prologue
    .line 494
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 495
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/Argument;

    .line 497
    invoke-virtual {v0, p0}, Lcom/hpplay/cybergarage/upnp/Argument;->setService(Lcom/hpplay/cybergarage/upnp/Service;)V

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 501
    const-string v0, "actionList"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 502
    if-nez v0, :cond_1

    .line 503
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "actionList"

    invoke-direct {v0, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Action;->getActionNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 507
    return-void
.end method

.method public addStateVariable(Lcom/hpplay/cybergarage/upnp/StateVariable;)V
    .locals 2

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceStateTable"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 825
    if-nez v0, :cond_0

    .line 826
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "serviceStateTable"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 831
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setServiceNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 834
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getStateVariableNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 835
    return-void
.end method

.method public addSubscriber(Lcom/hpplay/cybergarage/upnp/event/Subscriber;)V
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 592
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 598
    new-instance v4, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 599
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 601
    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 602
    const-string v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v4, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v4, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 606
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/Device;->notifyWait()V

    .line 608
    invoke-virtual {v0, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 609
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 617
    new-instance v2, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 618
    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v2, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 622
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/Device;->notifyWait()V

    .line 624
    invoke-virtual {v0, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 625
    return-void
.end method

.method public clearSID()V
    .locals 2

    .prologue
    .line 772
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 773
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/Service;->setTimeout(J)V

    .line 774
    return-void
.end method

.method public getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;
    .locals 6

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ActionList;->size()I

    move-result v3

    .line 482
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 483
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ActionList;->getAction(I)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v4

    .line 485
    if-nez v4, :cond_1

    .line 482
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 490
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;
    .locals 7

    .prologue
    .line 461
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ActionList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/ActionList;-><init>()V

    .line 462
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 463
    if-nez v1, :cond_1

    .line 476
    :cond_0
    return-object v0

    .line 465
    :cond_1
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 469
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 470
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 471
    invoke-static {v4}, Lcom/hpplay/cybergarage/upnp/Action;->isActionNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 469
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    :cond_2
    new-instance v5, Lcom/hpplay/cybergarage/upnp/Action;

    iget-object v6, p0, Lcom/hpplay/cybergarage/upnp/Service;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    invoke-direct {v5, v6, v4}, Lcom/hpplay/cybergarage/upnp/Action;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 474
    invoke-virtual {v0, v5}, Lcom/hpplay/cybergarage/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getConfigId()I
    .locals 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 249
    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0

    :cond_0
    const-string v1, "configId"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getControlURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->getDescriptionURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lcom/hpplay/cybergarage/upnp/Device;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    return-object v0
.end method

.method public getEventSubURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public getSCPDData()[B
    .locals 3

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 446
    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 453
    :goto_0
    return-object v0

    .line 449
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSCPDURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->getSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->serviceNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getServiceStateTable()Lcom/hpplay/cybergarage/upnp/ServiceStateTable;
    .locals 7

    .prologue
    .line 514
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;-><init>()V

    .line 515
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 516
    if-nez v2, :cond_1

    .line 527
    :cond_0
    return-object v0

    .line 518
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v3

    .line 519
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 520
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 521
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v5

    .line 522
    invoke-static {v5}, Lcom/hpplay/cybergarage/upnp/StateVariable;->isStateVariableNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 520
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_2
    new-instance v6, Lcom/hpplay/cybergarage/upnp/StateVariable;

    invoke-direct {v6, v3, v5}, Lcom/hpplay/cybergarage/upnp/StateVariable;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 525
    invoke-virtual {v0, v6}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;
    .locals 6

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceStateTable()Lcom/hpplay/cybergarage/upnp/ServiceStateTable;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v3

    .line 533
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 534
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 536
    if-nez v4, :cond_1

    .line 533
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 541
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSubscriber(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/event/Subscriber;
    .locals 6

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 680
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 681
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 682
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move-result-object v0

    .line 683
    if-nez v0, :cond_1

    .line 681
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 685
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->getSID()Ljava/lang/String;

    move-result-object v4

    .line 686
    if-eqz v4, :cond_0

    .line 688
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 691
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->getTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasSID()Z
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasStateVariable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControlURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getControlURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEventSubURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getEventSubURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSCPDURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isService(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 553
    if-nez p1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 555
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 556
    goto :goto_0

    .line 557
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 558
    goto :goto_0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->hasSID()Z

    move-result v0

    return v0
.end method

.method public loadSCPD(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 347
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 354
    :goto_0
    return v0

    .line 351
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v1

    .line 352
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 354
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/io/InputStream;)Z
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 362
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 363
    if-nez v0, :cond_0

    .line 364
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v1

    .line 367
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 369
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadSCPD(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 334
    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 342
    :goto_0
    return v0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSCPDNode(Lcom/hpplay/cybergarage/xml/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    new-instance v1, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->lock()V

    .line 162
    return-void
.end method

.method public notify(Lcom/hpplay/cybergarage/upnp/StateVariable;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 720
    new-array v4, v3, [Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move v1, v0

    .line 721
    :goto_0
    if-ge v1, v3, :cond_0

    .line 722
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 723
    :goto_1
    if-ge v1, v3, :cond_3

    .line 724
    aget-object v5, v4, v1

    .line 725
    if-nez v5, :cond_2

    .line 723
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_2
    invoke-virtual {v5}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->isExpired()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 728
    invoke-virtual {p0, v5}, Lcom/hpplay/cybergarage/upnp/Service;->removeSubscriber(Lcom/hpplay/cybergarage/upnp/event/Subscriber;)V

    goto :goto_2

    .line 732
    :cond_3
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    .line 733
    new-array v4, v3, [Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move v1, v0

    .line 734
    :goto_3
    if-ge v1, v3, :cond_4

    .line 735
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move-result-object v5

    aput-object v5, v4, v1

    .line 734
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 736
    :cond_4
    :goto_4
    if-ge v0, v3, :cond_7

    .line 737
    aget-object v1, v4, v0

    .line 738
    if-nez v1, :cond_6

    .line 736
    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 740
    :cond_6
    invoke-direct {p0, v1, p1}, Lcom/hpplay/cybergarage/upnp/Service;->notify(Lcom/hpplay/cybergarage/upnp/event/Subscriber;Lcom/hpplay/cybergarage/upnp/StateVariable;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    .line 747
    :cond_7
    return-void
.end method

.method public notifyAllStateVariables()V
    .locals 6

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceStateTable()Lcom/hpplay/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 752
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 753
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 754
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/StateVariable;->isSendEvents()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 755
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/Service;->notify(Lcom/hpplay/cybergarage/upnp/StateVariable;)V

    .line 752
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_1
    return-void
.end method

.method public removeSubscriber(Lcom/hpplay/cybergarage/upnp/event/Subscriber;)V
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriberList()Lcom/hpplay/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public serviceSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 628
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    .line 630
    if-nez v1, :cond_1

    .line 631
    const/4 v0, 0x0

    .line 646
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 635
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 636
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getNotifyServiceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v0, :cond_2

    .line 639
    invoke-virtual {v2, p1, v3, v4}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 640
    :cond_2
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isURNService(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v3

    .line 642
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 643
    invoke-virtual {v2, p1, v3, v4}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V
    .locals 4

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ActionList;->size()I

    move-result v2

    .line 803
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 804
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ActionList;->getAction(I)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v3

    .line 805
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/Action;->setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V

    .line 803
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 807
    :cond_0
    return-void
.end method

.method public setControlURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setDescriptionURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setDescriptionURL(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public setEventSubURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V
    .locals 4

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceStateTable()Lcom/hpplay/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    .line 655
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    .line 656
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 657
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v3

    .line 658
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 660
    :cond_0
    return-void
.end method

.method public setSCPDURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setSID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setSID(Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public setServiceID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setTimeout(J)V
    .locals 1

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceData()Lcom/hpplay/cybergarage/upnp/xml/ServiceData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/hpplay/cybergarage/upnp/xml/ServiceData;->setTimeout(J)V

    .line 794
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Service;->userData:Ljava/lang/Object;

    .line 845
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Service;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->unlock()V

    .line 166
    return-void
.end method

.method public updateConfigId()V
    .locals 3

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 239
    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/UPnP;->caluculateConfigId(Ljava/lang/String;)I

    move-result v1

    .line 244
    const-string v2, "configId"

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    goto :goto_0
.end method
