.class public Lcom/hpplay/cybergarage/upnp/Device;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/cybergarage/http/HTTPRequestListener;
.implements Lcom/hpplay/cybergarage/upnp/device/SearchListener;


# static fields
.field private static final CONFIG_ID:Ljava/lang/String; = "configId"

.field public static final DEFAULT_DESCRIPTION_URI:Ljava/lang/String; = "/description.xml"

.field public static final DEFAULT_DISCOVERY_WAIT_TIME:I = 0x12c

.field public static final DEFAULT_LEASE_TIME:I = 0x1e

.field public static final DEFAULT_PRESENTATION_URI:Ljava/lang/String; = "/presentation"

.field public static final DEFAULT_STARTUP_WAIT_TIME:I = 0x3e8

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field public static final ELEM_NAME:Ljava/lang/String; = "device"

.field private static final FRIENDLY_NAME:Ljava/lang/String; = "friendlyName"

.field public static final HTTP_DEFAULT_PORT:I = 0xfa4

.field private static final MANUFACTURE:Ljava/lang/String; = "manufacturer"

.field private static final MANUFACTURE_URL:Ljava/lang/String; = "manufacturerURL"

.field private static final MODEL_DESCRIPTION:Ljava/lang/String; = "modelDescription"

.field private static final MODEL_NAME:Ljava/lang/String; = "modelName"

.field private static final MODEL_NUMBER:Ljava/lang/String; = "modelNumber"

.field private static final MODEL_URL:Ljava/lang/String; = "modelURL"

.field private static final SERIAL_NUMBER:Ljava/lang/String; = "serialNumber"

.field private static final TAG:Ljava/lang/String; = "Cyber-Device"

.field private static final UDN:Ljava/lang/String; = "UDN"

.field private static final UID:Ljava/lang/String; = "UID"

.field private static final UPC:Ljava/lang/String; = "UPC"

.field public static final UPNP_ROOTDEVICE:Ljava/lang/String; = "upnp:rootdevice"

.field private static final URLBASE_NAME:Ljava/lang/String; = "URLBase"

.field private static cal:Ljava/util/Calendar; = null

.field private static final presentationURL:Ljava/lang/String; = "presentationURL"


# instance fields
.field private bootId:I

.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lcom/hpplay/cybergarage/xml/Node;

.field private iconBytesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mDesc:Ljava/lang/String;

.field private mutex:Lcom/hpplay/cybergarage/util/Mutex;

.field private presentationListener:Lcom/hpplay/cybergarage/upnp/device/PresentationListener;

.field private rootNode:Lcom/hpplay/cybergarage/xml/Node;

.field private userData:Ljava/lang/Object;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->initialize()V

    .line 1600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/hpplay/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0, v0, v0}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 1320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    .line 2278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 208
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 209
    iput-object p2, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 210
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setWirelessMode(Z)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0, v0}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->loadDescription(Ljava/io/File;)Z

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, v0, v0}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->loadDescription(Ljava/io/InputStream;)Z

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 237
    return-void
.end method

.method private deviceActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ActionRequest;Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 3

    .prologue
    .line 1897
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->print()V

    .line 1899
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v0

    .line 1900
    invoke-virtual {p2, v0}, Lcom/hpplay/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v0

    .line 1901
    if-nez v0, :cond_1

    .line 1902
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->invalidActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1905
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Action;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v1

    .line 1906
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;->getArgumentList()Lcom/hpplay/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 1908
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ArgumentList;->setReqArgs(Lcom/hpplay/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1913
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Action;->performActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1914
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->invalidActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->invalidArgumentsControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private deviceControlRequestRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 2

    .prologue
    .line 1877
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1878
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;-><init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/hpplay/cybergarage/upnp/Device;->deviceQueryControlRecieved(Lcom/hpplay/cybergarage/upnp/control/QueryRequest;Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 1881
    :goto_0
    return-void

    .line 1880
    :cond_0
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;-><init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/hpplay/cybergarage/upnp/Device;->deviceActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ActionRequest;Lcom/hpplay/cybergarage/upnp/Service;)V

    goto :goto_0
.end method

.method private deviceEventNewSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5

    .prologue
    .line 1975
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v0

    .line 1977
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v2

    .line 1984
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v1

    .line 1986
    new-instance v4, Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;-><init>()V

    .line 1987
    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 1988
    invoke-virtual {v4, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1989
    invoke-virtual {v4, v1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 1990
    invoke-virtual {p1, v4}, Lcom/hpplay/cybergarage/upnp/Service;->addSubscriber(Lcom/hpplay/cybergarage/upnp/event/Subscriber;)V

    .line 1992
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1993
    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1994
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v0, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1996
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 1997
    invoke-virtual {p2, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post(Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1999
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 2001
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->notifyAllStateVariables()V

    .line 2002
    :goto_0
    return-void

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lcom/hpplay/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventRenewSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 5

    .prologue
    .line 2006
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move-result-object v1

    .line 2009
    if-nez v1, :cond_0

    .line 2010
    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lcom/hpplay/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 2025
    :goto_0
    return-void

    .line 2014
    :cond_0
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v2

    .line 2015
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->setTimeOut(J)V

    .line 2016
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/Subscriber;->renew()V

    .line 2018
    new-instance v1, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 2019
    const/16 v4, 0xc8

    invoke-virtual {v1, v4}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 2020
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v1, v2, v3}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 2022
    invoke-virtual {p2, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post(Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 2024
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceEventSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 4

    .prologue
    const/16 v3, 0x19c

    const/4 v2, 0x1

    .line 1941
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1942
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1943
    if-nez v0, :cond_0

    .line 1944
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->returnBadRequest()Z

    .line 1971
    :goto_0
    return-void

    .line 1947
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1948
    invoke-direct {p0, p1, v3}, Lcom/hpplay/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0

    .line 1953
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1954
    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->deviceEventUnsubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1959
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1960
    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->deviceEventNewSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1965
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1966
    invoke-direct {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1970
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/hpplay/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V

    goto :goto_0
.end method

.method private deviceEventUnsubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/Service;Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V
    .locals 2

    .prologue
    .line 2029
    invoke-virtual {p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 2030
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/event/Subscriber;

    move-result-object v0

    .line 2032
    if-nez v0, :cond_0

    .line 2033
    const/16 v0, 0x19c

    invoke-direct {p0, p2, v0}, Lcom/hpplay/cybergarage/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V

    .line 2044
    :goto_0
    return-void

    .line 2037
    :cond_0
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Service;->removeSubscriber(Lcom/hpplay/cybergarage/upnp/event/Subscriber;)V

    .line 2039
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 2040
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 2041
    invoke-virtual {p2, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post(Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 2043
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->print()V

    goto :goto_0
.end method

.method private deviceQueryControlRecieved(Lcom/hpplay/cybergarage/upnp/control/QueryRequest;Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 2

    .prologue
    .line 1918
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->print()V

    .line 1919
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v0

    .line 1920
    invoke-virtual {p2, v0}, Lcom/hpplay/cybergarage/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1921
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->invalidActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V

    .line 1927
    :cond_0
    :goto_0
    return-void

    .line 1924
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v0

    .line 1925
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/StateVariable;->performQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1926
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->invalidActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V

    goto :goto_0
.end method

.method private getAdvertiser()Lcom/hpplay/cybergarage/upnp/device/Advertiser;
    .locals 1

    .prologue
    .line 2121
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getAdvertiser()Lcom/hpplay/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1765
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->updateURLBase(Ljava/lang/String;)V

    .line 1767
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 1768
    if-nez v0, :cond_1

    .line 1769
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1771
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1774
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

    .line 1775
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 566
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    .line 567
    if-nez v0, :cond_0

    .line 568
    new-instance v0, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;-><init>()V

    .line 569
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 570
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 572
    :cond_0
    return-object v0
.end method

.method private getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 2051
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1432
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "upnp:rootdevice"

    goto :goto_0
.end method

.method private getNotifyDeviceTypeNT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceTypeUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceUSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1438
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSSDPSearchSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 1

    .prologue
    .line 2113
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getSSDPSearchSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private httpGetRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1779
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 1780
    const-string v0, "Cyber-Device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGetRequestRecieved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    if-nez v2, :cond_0

    .line 1782
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    .line 1839
    :goto_0
    return-void

    .line 1789
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1793
    invoke-direct {p0, v2}, Lcom/hpplay/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1794
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 1795
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1796
    :cond_1
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 1797
    :cond_2
    const-string v2, "text/xml; charset=\"utf-8\""

    .line 1798
    const-string v1, "en"

    .line 1799
    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1800
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->updateURLBase(Ljava/lang/String;)V

    .line 1801
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_1
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 1825
    :goto_2
    new-instance v3, Lcom/hpplay/cybergarage/http/HTTPResponse;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/http/HTTPResponse;-><init>()V

    .line 1826
    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setStatusCode(I)V

    .line 1827
    if-eqz v0, :cond_3

    .line 1828
    invoke-virtual {v3, v0}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 1830
    :cond_3
    if-eqz v1, :cond_4

    .line 1833
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContentLanguage(Ljava/lang/String;)V

    .line 1836
    :cond_4
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/http/HTTPResponse;->setContent([B)V

    .line 1838
    invoke-virtual {p1, v3}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    goto :goto_0

    .line 1803
    :cond_5
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 1805
    :cond_6
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1806
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v2

    .line 1807
    const-string v0, "text/xml; charset=\"utf-8\""

    .line 1808
    const-string v1, "en"

    .line 1809
    invoke-direct {v3, v2}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_2

    .line 1810
    :cond_7
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1811
    const-string v0, "text/xml; charset=\"utf-8\""

    .line 1812
    const-string v1, "en"

    .line 1813
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Service;->getSCPDData()[B

    move-result-object v2

    goto :goto_2

    .line 1814
    :cond_8
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/Device;->isIconBytesURI(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_9

    .line 1815
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/Device;->getIconByURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Icon;

    move-result-object v2

    .line 1816
    if-eqz v2, :cond_a

    .line 1817
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Icon;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1818
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Icon;->getBytes()[B

    move-result-object v2

    goto :goto_2

    .line 1821
    :cond_9
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto/16 :goto_0

    :cond_a
    move-object v2, v0

    move-object v0, v1

    goto :goto_2
.end method

.method private httpPostRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 2

    .prologue
    .line 1842
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1844
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->soapActionRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 1848
    :goto_0
    return-void

    .line 1847
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method private initializeLoadedDescription()Z
    .locals 1

    .prologue
    .line 685
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 686
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setLeaseTime(I)V

    .line 687
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 690
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->updateUDN()V

    .line 693
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V
    .locals 2

    .prologue
    .line 1884
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1885
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1886
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    .line 1887
    return-void
.end method

.method private invalidArgumentsControlRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;)V
    .locals 2

    .prologue
    .line 1890
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/control/ActionResponse;-><init>()V

    .line 1891
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1892
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/control/ControlRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    .line 1893
    return-void
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 597
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 598
    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isDeviceNode(Lcom/hpplay/cybergarage/xml/Node;)Z
    .locals 2

    .prologue
    .line 701
    const-string v0, "device"

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPresentationRequest(Lcom/hpplay/cybergarage/http/HTTPRequest;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1030
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isGetRequest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return v0

    .line 1032
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 1033
    if-eqz v1, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getPresentationURL()Ljava/lang/String;

    move-result-object v2

    .line 1036
    if-eqz v2, :cond_0

    .line 1038
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final notifyWait()V
    .locals 1

    .prologue
    .line 1450
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/hpplay/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1451
    return-void
.end method

.method private setAdvertiser(Lcom/hpplay/cybergarage/upnp/device/Advertiser;)V
    .locals 1

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setAdvertiser(Lcom/hpplay/cybergarage/upnp/device/Advertiser;)V

    .line 2118
    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setDescriptionFile(Ljava/io/File;)V

    .line 581
    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setDescriptionURI(Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private setURLBase(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 793
    const-string v0, "Cyber-Device"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set base url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 795
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 810
    :cond_1
    :goto_0
    return-void

    .line 803
    :cond_2
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "URLBase"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 804
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/xml/Node;->hasNodes()Z

    move-result v1

    if-nez v1, :cond_3

    .line 808
    :cond_3
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/hpplay/cybergarage/xml/Node;->insertNode(Lcom/hpplay/cybergarage/xml/Node;I)V

    goto :goto_0
.end method

.method private setUUID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    .line 403
    return-void
.end method

.method private soapActionRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 2

    .prologue
    .line 1861
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1862
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1863
    if-eqz v0, :cond_0

    .line 1864
    new-instance v1, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;

    invoke-direct {v1, p1}, Lcom/hpplay/cybergarage/upnp/control/ActionRequest;-><init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 1865
    invoke-direct {p0, v1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->deviceControlRequestRecieved(Lcom/hpplay/cybergarage/upnp/control/ControlRequest;Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 1869
    :goto_0
    return-void

    .line 1868
    :cond_0
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->soapBadActionRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method private soapBadActionRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 2

    .prologue
    .line 1855
    new-instance v0, Lcom/hpplay/cybergarage/soap/SOAPResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/soap/SOAPResponse;-><init>()V

    .line 1856
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/soap/SOAPResponse;->setStatusCode(I)V

    .line 1857
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/http/HTTPRequest;->post(Lcom/hpplay/cybergarage/http/HTTPResponse;)Z

    .line 1858
    return-void
.end method

.method private stop(Z)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2180
    if-ne p1, v1, :cond_0

    .line 2181
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->byebye()V

    .line 2183
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;

    move-result-object v0

    .line 2184
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->stop()V

    .line 2185
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->close()V

    .line 2186
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->clear()V

    .line 2188
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    .line 2189
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->stop()V

    .line 2190
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->close()V

    .line 2191
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 2193
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getAdvertiser()Lcom/hpplay/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 2194
    if-eqz v0, :cond_1

    .line 2195
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Advertiser;->stop()V

    .line 2196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setAdvertiser(Lcom/hpplay/cybergarage/upnp/device/Advertiser;)V

    .line 2199
    :cond_1
    return v1
.end method

.method private updateBootId()V
    .locals 1

    .prologue
    .line 420
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->createBootId()I

    move-result v0

    iput v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->bootId:I

    .line 421
    return-void
.end method

.method private updateConfigId(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 7

    .prologue
    const v6, 0xffffff

    const/4 v0, 0x0

    .line 434
    .line 436
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v4

    .line 437
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    .line 438
    :goto_0
    if-ge v2, v5, :cond_0

    .line 439
    invoke-virtual {v4, v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 440
    invoke-direct {p0, v3}, Lcom/hpplay/cybergarage/upnp/Device;->updateConfigId(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 441
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getConfigId()I

    move-result v3

    add-int/2addr v1, v3

    .line 442
    and-int v3, v1, v6

    .line 438
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v2

    .line 446
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    .line 447
    :goto_1
    if-ge v0, v3, :cond_1

    .line 448
    invoke-virtual {v2, v0}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Service;->updateConfigId()V

    .line 450
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Service;->getConfigId()I

    move-result v4

    add-int/2addr v1, v4

    .line 451
    and-int/2addr v1, v6

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 455
    if-nez v0, :cond_2

    .line 462
    :goto_2
    return-void

    .line 458
    :cond_2
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/hpplay/cybergarage/upnp/UPnP;->caluculateConfigId(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 460
    and-int/2addr v1, v6

    .line 461
    const-string v2, "configId"

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private updateUDN()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private updateURLBase(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setURLBase(Ljava/lang/String;)V

    .line 815
    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;I)V
    .locals 1

    .prologue
    .line 1935
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;-><init>()V

    .line 1936
    invoke-virtual {v0, p2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 1937
    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post(Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;)V

    .line 1938
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 5

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceList"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 537
    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "deviceList"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 543
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 544
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 545
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    if-nez v0, :cond_1

    .line 546
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 547
    const-string v1, ""

    const-string v2, "urn:schemas-upnp-org:device-1-0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setNameSpace(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "specVersion"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 549
    new-instance v2, Lcom/hpplay/cybergarage/xml/Node;

    const-string v3, "major"

    invoke-direct {v2, v3}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 550
    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 551
    new-instance v3, Lcom/hpplay/cybergarage/xml/Node;

    const-string v4, "minor"

    invoke-direct {v3, v4}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 552
    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 554
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 555
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 556
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 558
    :cond_1
    return-void
.end method

.method public addIcon(Lcom/hpplay/cybergarage/upnp/Icon;)Z
    .locals 3

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 1351
    if-nez v1, :cond_0

    .line 1352
    const/4 v0, 0x0

    .line 1370
    :goto_0
    return v0

    .line 1354
    :cond_0
    const-string v0, "iconList"

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 1355
    if-nez v0, :cond_1

    .line 1356
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "iconList"

    invoke-direct {v0, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 1360
    :cond_1
    new-instance v1, Lcom/hpplay/cybergarage/xml/Node;

    const-string v2, "icon"

    invoke-direct {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 1361
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1362
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->getIconNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->set(Lcom/hpplay/cybergarage/xml/Node;)Z

    .line 1364
    :cond_2
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 1366
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->hasURL()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->hasBytes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Icon;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addService(Lcom/hpplay/cybergarage/upnp/Service;)V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serviceList"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 517
    if-nez v0, :cond_0

    .line 518
    new-instance v0, Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "serviceList"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->addNode(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 522
    return-void
.end method

.method public announce()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1505
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/Device;->notifyWait()V

    .line 1506
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v3

    .line 1508
    if-eqz v3, :cond_3

    .line 1509
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 1510
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1511
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    .line 1520
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 1521
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 1520
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1514
    :cond_3
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 1515
    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    .line 1516
    :goto_2
    if-ge v2, v3, :cond_1

    .line 1517
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1516
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1523
    :cond_4
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v4

    move v3, v1

    .line 1524
    :goto_3
    if-ge v3, v4, :cond_2

    .line 1525
    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/hpplay/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1524
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1528
    :cond_5
    return-void
.end method

.method public announce(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1454
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    new-instance v2, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v2, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1458
    new-instance v3, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1459
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 1461
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 1462
    const-string v1, "ssdp:alive"

    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getBootId()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setBootId(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1467
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v1

    .line 1468
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    .line 1469
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1473
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 1474
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1480
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v1

    .line 1481
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 1482
    invoke-virtual {v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {v3, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1484
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1487
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1489
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v2

    .line 1490
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 1491
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1492
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 1493
    invoke-virtual {v4, p1}, Lcom/hpplay/cybergarage/upnp/Service;->announce(Ljava/lang/String;)V

    .line 1491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1496
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 1497
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 1498
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1499
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 1500
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1498
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1502
    :cond_2
    return-void
.end method

.method public byebye()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1572
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v3

    .line 1574
    if-eqz v3, :cond_3

    .line 1575
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 1576
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1577
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    move v2, v1

    .line 1587
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 1588
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 1587
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1580
    :cond_3
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 1581
    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    .line 1582
    :goto_2
    if-ge v2, v3, :cond_1

    .line 1583
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1582
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1590
    :cond_4
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v4

    move v3, v1

    .line 1591
    :goto_3
    if-ge v3, v4, :cond_2

    .line 1592
    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/hpplay/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1591
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1594
    :cond_5
    return-void
.end method

.method public byebye(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1531
    new-instance v1, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v1, p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1533
    new-instance v2, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1534
    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1538
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v3

    .line 1539
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceUSN()Ljava/lang/String;

    move-result-object v4

    .line 1540
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v2, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1546
    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 1547
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 1548
    invoke-virtual {v2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1549
    invoke-virtual {v2, v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1553
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1555
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v2

    .line 1556
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 1557
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1558
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 1559
    invoke-virtual {v4, p1}, Lcom/hpplay/cybergarage/upnp/Service;->byebye(Ljava/lang/String;)V

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 1563
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 1564
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1565
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 1566
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1568
    :cond_2
    return-void
.end method

.method public deviceSearchReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 0

    .prologue
    .line 1680
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->deviceSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1681
    return-void
.end method

.method public deviceSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1633
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v1

    .line 1635
    if-nez v1, :cond_1

    .line 1677
    :cond_0
    return-void

    .line 1638
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v3

    .line 1639
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1640
    if-ne v3, v5, :cond_2

    .line 1641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "::upnp:rootdevice"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1643
    :cond_2
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1644
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v4

    .line 1645
    if-ne v3, v5, :cond_3

    const/4 v1, 0x3

    :goto_0
    move v3, v2

    .line 1646
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1647
    invoke-virtual {p0, p1, v4, v0}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1646
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1645
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 1648
    :cond_4
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v5, :cond_6

    .line 1649
    if-ne v3, v5, :cond_5

    .line 1650
    const-string v1, "upnp:rootdevice"

    invoke-virtual {p0, p1, v1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1664
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v1

    .line 1665
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v0, v2

    .line 1666
    :goto_3
    if-ge v0, v3, :cond_8

    .line 1667
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 1668
    invoke-virtual {v4, p1}, Lcom/hpplay/cybergarage/upnp/Service;->serviceSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)Z

    .line 1666
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1651
    :cond_6
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isUUIDDevice(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_7

    .line 1652
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1654
    invoke-virtual {p0, p1, v3, v0}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1655
    :cond_7
    invoke-static {v1}, Lcom/hpplay/cybergarage/upnp/device/ST;->isURNDevice(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1656
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v5, :cond_5

    .line 1659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1660
    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/Device;->postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1671
    :cond_8
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 1672
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    move v0, v2

    .line 1673
    :goto_4
    if-ge v0, v3, :cond_0

    .line 1674
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 1675
    invoke-virtual {v2, p1}, Lcom/hpplay/cybergarage/upnp/Device;->deviceSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 1673
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    .line 343
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 344
    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 258
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 259
    :cond_0
    const-string p1, ""

    .line 332
    :cond_1
    :goto_0
    return-object p1

    .line 262
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 268
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 269
    :cond_3
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 270
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 271
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    const-string v1, "Cyber-Device"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :goto_1
    invoke-static {p3, p1}, Lcom/hpplay/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    goto/16 :goto_0

    .line 283
    :catch_2
    move-exception v0

    .line 284
    const-string v1, "Cyber-Device"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 292
    :catch_3
    move-exception v0

    .line 296
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_6

    .line 298
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v0}, Lcom/hpplay/cybergarage/http/HTTP;->getPort(Ljava/lang/String;)I

    move-result v0

    .line 301
    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/http/HTTP;->getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 307
    :cond_6
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 308
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 309
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    :try_start_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object p1

    goto/16 :goto_0

    .line 316
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :try_start_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object p1

    goto/16 :goto_0

    .line 320
    :catch_4
    move-exception v0

    .line 324
    :goto_2
    invoke-static {p2, p1}, Lcom/hpplay/cybergarage/http/HTTP;->getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    :try_start_6
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object p1

    goto/16 :goto_0

    .line 328
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 313
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1288
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v4

    .line 1289
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    move v3, v1

    .line 1290
    :goto_0
    if-ge v3, v5, :cond_4

    .line 1291
    invoke-virtual {v4, v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1292
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Service;->getActionList()Lcom/hpplay/cybergarage/upnp/ActionList;

    move-result-object v6

    .line 1293
    invoke-virtual {v6}, Lcom/hpplay/cybergarage/upnp/ActionList;->size()I

    move-result v7

    move v2, v1

    .line 1294
    :goto_1
    if-ge v2, v7, :cond_3

    .line 1295
    invoke-virtual {v6, v2}, Lcom/hpplay/cybergarage/upnp/ActionList;->getAction(I)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v0

    .line 1296
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1297
    if-nez v8, :cond_1

    .line 1294
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1299
    :cond_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1313
    :cond_2
    :goto_2
    return-object v0

    .line 1290
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1304
    :cond_4
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1305
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1306
    :goto_3
    if-ge v1, v3, :cond_5

    .line 1307
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getAction(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Action;

    move-result-object v0

    .line 1309
    if-nez v0, :cond_2

    .line 1306
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1313
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getBootId()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->bootId:I

    return v0
.end method

.method public getConfigId()I
    .locals 2

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 470
    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 472
    :goto_0
    return v0

    :cond_0
    const-string v1, "configId"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getAttributeIntegerValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDescriptionFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 604
    if-nez v0, :cond_0

    .line 605
    const-string v0, ""

    .line 606
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;
    .locals 6

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1093
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1094
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1095
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1096
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1102
    :cond_0
    :goto_1
    return-object v0

    .line 1098
    :cond_1
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1099
    if-nez v0, :cond_0

    .line 1094
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1102
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;
    .locals 6

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1107
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1108
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 1109
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1110
    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1116
    :cond_0
    :goto_1
    return-object v0

    .line 1112
    :cond_1
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1113
    if-nez v0, :cond_0

    .line 1108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;
    .locals 6

    .prologue
    .line 1064
    new-instance v0, Lcom/hpplay/cybergarage/upnp/DeviceList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;-><init>()V

    .line 1065
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "deviceList"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 1066
    if-nez v2, :cond_1

    .line 1076
    :cond_0
    return-object v0

    .line 1068
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 1069
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1070
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 1071
    invoke-static {v4}, Lcom/hpplay/cybergarage/upnp/Device;->isDeviceNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1069
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    :cond_2
    new-instance v5, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {v5, v4}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 1074
    invoke-virtual {v0, v5}, Lcom/hpplay/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getHTTPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 1692
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lcom/hpplay/cybergarage/upnp/Icon;
    .locals 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getIconList()Lcom/hpplay/cybergarage/upnp/IconList;

    move-result-object v0

    .line 1398
    if-gez p1, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/IconList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_0

    .line 1399
    const/4 v0, 0x0

    .line 1400
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/IconList;->getIcon(I)Lcom/hpplay/cybergarage/upnp/Icon;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconByURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Icon;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1335
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getIconList()Lcom/hpplay/cybergarage/upnp/IconList;

    move-result-object v3

    .line 1336
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/IconList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return-object v0

    .line 1339
    :cond_1
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/IconList;->size()I

    move-result v4

    .line 1340
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    .line 1341
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/IconList;->getIcon(I)Lcom/hpplay/cybergarage/upnp/Icon;

    move-result-object v1

    .line 1342
    invoke-virtual {v1, p1}, Lcom/hpplay/cybergarage/upnp/Icon;->isURL(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    .line 1343
    goto :goto_0

    .line 1340
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getIconList()Lcom/hpplay/cybergarage/upnp/IconList;
    .locals 7

    .prologue
    .line 1374
    new-instance v1, Lcom/hpplay/cybergarage/upnp/IconList;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/IconList;-><init>()V

    .line 1375
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v2, "iconList"

    invoke-virtual {v0, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v3

    .line 1376
    if-nez v3, :cond_0

    move-object v0, v1

    .line 1393
    :goto_0
    return-object v0

    .line 1378
    :cond_0
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v4

    .line 1379
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_3

    .line 1380
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 1381
    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/Icon;->isIconNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1379
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1383
    :cond_1
    new-instance v5, Lcom/hpplay/cybergarage/upnp/Icon;

    invoke-direct {v5, v0}, Lcom/hpplay/cybergarage/upnp/Icon;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 1384
    invoke-virtual {v5}, Lcom/hpplay/cybergarage/upnp/Icon;->hasURL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    invoke-virtual {v5}, Lcom/hpplay/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 1386
    iget-object v6, p0, Lcom/hpplay/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1387
    if-eqz v0, :cond_2

    .line 1388
    invoke-virtual {v5, v0}, Lcom/hpplay/cybergarage/upnp/Icon;->setBytes([B)V

    .line 1391
    :cond_2
    invoke-virtual {v1, v5}, Lcom/hpplay/cybergarage/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1393
    goto :goto_0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2215
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2216
    if-nez v0, :cond_0

    .line 2217
    const-string v0, ""

    .line 2218
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLeaseTime()I
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getLeaseTime()I

    move-result v0

    .line 759
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v0

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    .line 1426
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    .line 1425
    invoke-static {p1, v0, v1}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufactureURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2095
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMulticastIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentDevice()Lcom/hpplay/cybergarage/upnp/Device;
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v0

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getParentNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 507
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getPresentationListener()Lcom/hpplay/cybergarage/upnp/device/PresentationListener;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->presentationListener:Lcom/hpplay/cybergarage/upnp/device/PresentationListener;

    return-object v0
.end method

.method public getPresentationURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 481
    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 483
    :cond_1
    const-string v2, "device"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 484
    if-eqz v2, :cond_0

    .line 486
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public getRootNode()Lcom/hpplay/cybergarage/xml/Node;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/Node;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPAnnounceCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isNMPRMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isWirelessMode()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 391
    const/4 v0, 0x4

    .line 392
    :cond_0
    return v0
.end method

.method public getSSDPBindAddress()[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 2081
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getSSDPBindAddress()[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1708
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getMulticastIPv4Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv4MulticastAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1716
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 1717
    return-void
.end method

.method public getSSDPIPv6MulticastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1724
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getMulticastIPv6Address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSDPIPv6MulticastAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1732
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 1733
    return-void
.end method

.method public getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;
    .locals 1

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    const/4 v0, 0x0

    .line 724
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 2065
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->getSSDPPort()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1140
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 1141
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    .line 1142
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1143
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1144
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1157
    :cond_0
    :goto_1
    return-object v0

    .line 1142
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1148
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1149
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1150
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1151
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1152
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1153
    if-nez v0, :cond_0

    .line 1150
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1157
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 1183
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    .line 1184
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1185
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1186
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1199
    :cond_0
    :goto_1
    return-object v0

    .line 1184
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1190
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1191
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1192
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1193
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1194
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1195
    if-nez v0, :cond_0

    .line 1192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1199
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1203
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 1204
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    .line 1205
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1206
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1207
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1220
    :cond_0
    :goto_1
    return-object v0

    .line 1205
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1211
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1212
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1213
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1214
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1215
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1216
    if-nez v0, :cond_0

    .line 1213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1220
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1161
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 1162
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    .line 1163
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1164
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1165
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1178
    :cond_0
    :goto_1
    return-object v0

    .line 1163
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1169
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1170
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1171
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1172
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1173
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1174
    if-nez v0, :cond_0

    .line 1171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1178
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;
    .locals 6

    .prologue
    .line 1124
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ServiceList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/upnp/ServiceList;-><init>()V

    .line 1125
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v2

    .line 1126
    if-nez v2, :cond_1

    .line 1136
    :cond_0
    return-object v0

    .line 1128
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/xml/Node;->getNNodes()I

    move-result v3

    .line 1129
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 1130
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v4

    .line 1131
    invoke-static {v4}, Lcom/hpplay/cybergarage/upnp/Service;->isServiceNode(Lcom/hpplay/cybergarage/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_2
    new-instance v5, Lcom/hpplay/cybergarage/upnp/Service;

    invoke-direct {v5, v4}, Lcom/hpplay/cybergarage/upnp/Service;-><init>(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 1134
    invoke-virtual {v0, v5}, Lcom/hpplay/cybergarage/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getSmallestIcon()Lcom/hpplay/cybergarage/upnp/Icon;
    .locals 7

    .prologue
    .line 1404
    const/4 v1, 0x0

    .line 1405
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getIconList()Lcom/hpplay/cybergarage/upnp/IconList;

    move-result-object v3

    .line 1406
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/IconList;->size()I

    move-result v4

    .line 1407
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1408
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/IconList;->getIcon(I)Lcom/hpplay/cybergarage/upnp/Icon;

    move-result-object v0

    .line 1409
    if-nez v1, :cond_1

    .line 1407
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1413
    :cond_1
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Icon;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Icon;->getWidth()I

    move-result v6

    if-lt v5, v6, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 1417
    :cond_2
    return-object v1
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1250
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-object v0

    .line 1253
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v4

    .line 1254
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v5

    move v3, v2

    .line 1255
    :goto_1
    if-ge v3, v5, :cond_4

    .line 1256
    invoke-virtual {v4, v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v1

    .line 1258
    if-eqz p1, :cond_3

    .line 1259
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1255
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1262
    :cond_3
    invoke-virtual {v1, p2}, Lcom/hpplay/cybergarage/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v1

    .line 1263
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 1264
    goto :goto_0

    .line 1267
    :cond_4
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 1268
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v4

    .line 1269
    :goto_2
    if-ge v2, v4, :cond_0

    .line 1270
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    .line 1271
    invoke-virtual {v1, p1, p2}, Lcom/hpplay/cybergarage/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/StateVariable;

    move-result-object v1

    .line 1272
    if-eqz v1, :cond_5

    move-object v0, v1

    .line 1273
    goto :goto_0

    .line 1269
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method public getSubscriberService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1224
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v3

    .line 1225
    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v4

    move v2, v1

    .line 1226
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1227
    invoke-virtual {v3, v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1228
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v5

    .line 1229
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1242
    :cond_0
    :goto_1
    return-object v0

    .line 1226
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1234
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 1235
    :goto_2
    if-ge v1, v3, :cond_3

    .line 1236
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 1237
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 1238
    if-nez v0, :cond_0

    .line 1235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1242
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPPacket()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getTimeStamp()J

    move-result-wide v0

    .line 770
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUPC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->devUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 986
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UID"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasPresentationListener()Z
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->presentationListener:Lcom/hpplay/cybergarage/upnp/device/PresentationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUDN()Z
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 971
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 972
    :cond_0
    const/4 v0, 0x0

    .line 973
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasUid()Z
    .locals 1

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 991
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 992
    :cond_0
    const/4 v0, 0x0

    .line 993
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public httpRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1736
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->print()V

    .line 1738
    const-string v0, "httpRequestRecieved"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " httpReq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->hasPresentationListener()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->isPresentationRequest(Lcom/hpplay/cybergarage/http/HTTPRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getPresentationListener()Lcom/hpplay/cybergarage/upnp/device/PresentationListener;

    move-result-object v0

    .line 1741
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/PresentationListener;->httpRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 1762
    :goto_0
    return-void

    .line 1745
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isGetRequest()Z

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isHeadRequest()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1746
    :cond_1
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->httpGetRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    goto :goto_0

    .line 1749
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isPostRequest()Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1750
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->httpPostRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    goto :goto_0

    .line 1754
    :cond_3
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v0

    if-eq v0, v3, :cond_4

    .line 1755
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1756
    :cond_4
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;-><init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 1757
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->deviceEventSubscriptionRecieved(Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;)V

    goto :goto_0

    .line 1761
    :cond_5
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_0
.end method

.method public isDevice(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1080
    if-nez p1, :cond_1

    .line 1088
    :cond_0
    :goto_0
    return v0

    .line 1082
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 1083
    goto :goto_0

    .line 1084
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    .line 1085
    goto :goto_0

    .line 1086
    :cond_3
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1087
    goto :goto_0
.end method

.method public isDeviceType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 839
    const/4 v0, 0x0

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v0

    .line 779
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    .line 781
    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 782
    const/4 v0, 0x1

    .line 783
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconBytesURI(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->iconBytesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1324
    if-nez v0, :cond_1

    .line 1325
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getIconByURI(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Icon;

    move-result-object v0

    .line 1326
    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Icon;->hasBytes()Z

    move-result v0

    .line 1331
    :goto_0
    return v0

    .line 1329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1331
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNMPRMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 370
    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "INMPR03"

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRootDevice()Z
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 709
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 2207
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getAdvertiser()Lcom/hpplay/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWirelessMode()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 663
    :try_start_0
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 664
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/File;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 665
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root node"

    invoke-direct {v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    new-instance v1, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 668
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 669
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 670
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root device node"

    invoke-direct {v0, v1, p1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/File;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v0

    if-nez v0, :cond_2

    .line 677
    const/4 v0, 0x0

    .line 681
    :goto_0
    return v0

    .line 679
    :cond_2
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 681
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .locals 2

    .prologue
    .line 615
    :try_start_0
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 616
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 617
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root node"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    new-instance v1, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 620
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 621
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 622
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root device node"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 628
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v0

    if-nez v0, :cond_2

    .line 629
    const/4 v0, 0x0

    .line 633
    :goto_0
    return v0

    .line 631
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 633
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadDescription(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 639
    :try_start_0
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 640
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 641
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root node"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    new-instance v1, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    invoke-direct {v1, v0}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 644
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 645
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;

    const-string v1, "Couldn\'t find a root device node"

    invoke-direct {v0, v1}, Lcom/hpplay/cybergarage/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 652
    :cond_1
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->initializeLoadedDescription()Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    .line 655
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 657
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->lock()V

    .line 247
    return-void
.end method

.method public postSearchResponse(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 1604
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    .line 1605
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    .line 1606
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1608
    new-instance v1, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 1609
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 1610
    sget-object v2, Lcom/hpplay/cybergarage/upnp/Device;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setDate(Ljava/util/Calendar;)V

    .line 1611
    invoke-virtual {v1, p2}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setST(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v1, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setUSN(Ljava/lang/String;)V

    .line 1613
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setLocation(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getBootId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setBootId(I)V

    .line 1616
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->setMYNAME(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getMX()I

    move-result v0

    .line 1619
    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/hpplay/cybergarage/util/TimerUtil;->waitRandom(I)V

    .line 1621
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    .line 1622
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v3

    .line 1623
    new-instance v4, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 1624
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;->print()V

    .line 1625
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPAnnounceCount()I

    move-result v5

    .line 1626
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    .line 1627
    invoke-virtual {v4, v2, v3, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponse;)Z

    .line 1626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1629
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removePresentationURL()Z
    .locals 2

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V
    .locals 4

    .prologue
    .line 2226
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v1

    .line 2227
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v2

    .line 2228
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2229
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v3

    .line 2230
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/Service;->setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V

    .line 2228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2232
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2250
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;)V

    .line 2251
    if-ne p2, v4, :cond_0

    .line 2252
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 2253
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 2254
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2255
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 2256
    invoke-virtual {v3, p1, v4}, Lcom/hpplay/cybergarage/upnp/Device;->setActionListener(Lcom/hpplay/cybergarage/upnp/control/ActionListener;Z)V

    .line 2254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2259
    :cond_0
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->mDesc:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setDeviceNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->deviceNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 193
    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public setHTTPBindAddress([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setHTTPBindAddress([Ljava/net/InetAddress;)V

    .line 1697
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 1

    .prologue
    .line 1688
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setHTTPPort(I)V

    .line 1689
    return-void
.end method

.method public setLeaseTime(I)V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setLeaseTime(I)V

    .line 748
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getAdvertiser()Lcom/hpplay/cybergarage/upnp/device/Advertiser;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->announce()V

    .line 751
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Advertiser;->restart()V

    .line 753
    :cond_0
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setLocation(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public setManufacture(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public setManufactureURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "manufacturerURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    return-void
.end method

.method public setModelDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelDescription"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method public setModelName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void
.end method

.method public setModelNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public setModelURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "modelURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method public setMulticastIPv4Address(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2088
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setMulticastIPv4Address(Ljava/lang/String;)V

    .line 2089
    return-void
.end method

.method public setMulticastIPv6Address(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2102
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setMulticastIPv6Address(Ljava/lang/String;)V

    .line 2103
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 3

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 361
    const-string v1, "INMPR03"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0

    .line 364
    :cond_1
    const-string v1, "INMPR03"

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Node;->removeNode(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setPresentationListener(Lcom/hpplay/cybergarage/upnp/device/PresentationListener;)V
    .locals 1

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->presentationListener:Lcom/hpplay/cybergarage/upnp/device/PresentationListener;

    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    const-string v0, "/presentation"

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setPresentationURL(Ljava/lang/String;)V

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->removePresentationURL()Z

    goto :goto_0
.end method

.method public setPresentationURL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "presentationURL"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method public setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V
    .locals 4

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v1

    .line 2236
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v2

    .line 2237
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2238
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v3

    .line 2239
    invoke-virtual {v3, p1}, Lcom/hpplay/cybergarage/upnp/Service;->setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V

    .line 2237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2241
    :cond_0
    return-void
.end method

.method public setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2263
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;)V

    .line 2264
    if-ne p2, v4, :cond_0

    .line 2265
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 2266
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 2267
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2268
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 2269
    invoke-virtual {v3, p1, v4}, Lcom/hpplay/cybergarage/upnp/Device;->setQueryListener(Lcom/hpplay/cybergarage/upnp/control/QueryListener;Z)V

    .line 2267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2272
    :cond_0
    return-void
.end method

.method public setRootNode(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->rootNode:Lcom/hpplay/cybergarage/xml/Node;

    .line 189
    return-void
.end method

.method public setSSDPBindAddress([Ljava/net/InetAddress;)V
    .locals 1

    .prologue
    .line 2073
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setSSDPBindAddress([Ljava/net/InetAddress;)V

    .line 2074
    return-void
.end method

.method public setSSDPPacket(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setSSDPPacket(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 719
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 1

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceData()Lcom/hpplay/cybergarage/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/xml/DeviceData;->setSSDPPort(I)V

    .line 2059
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "serialNumber"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public setUPC(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UPC"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    const-string v1, "UID"

    invoke-virtual {v0, v1, p1}, Lcom/hpplay/cybergarage/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->userData:Ljava/lang/Object;

    .line 2282
    return-void
.end method

.method public setWirelessMode(Z)V
    .locals 0

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/hpplay/cybergarage/upnp/Device;->wirelessMode:Z

    .line 383
    return-void
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2125
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 2126
    invoke-direct {p0, v3}, Lcom/hpplay/cybergarage/upnp/Device;->stop(Z)Z

    .line 2133
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    .line 2134
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;

    move-result-object v4

    move v1, v2

    .line 2135
    :goto_0
    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2136
    add-int/lit8 v1, v1, 0x1

    .line 2137
    const/16 v5, 0x64

    if-ge v5, v1, :cond_1

    .line 2176
    :cond_0
    :goto_1
    return v2

    .line 2139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 2140
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getHTTPPort()I

    move-result v0

    goto :goto_0

    .line 2142
    :cond_2
    invoke-virtual {v4, p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->addRequestListener(Lcom/hpplay/cybergarage/http/HTTPRequestListener;)V

    .line 2143
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/http/HTTPServerList;->start()V

    .line 2149
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->getSSDPSearchSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    .line 2150
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2152
    invoke-virtual {v0, p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lcom/hpplay/cybergarage/upnp/device/SearchListener;)V

    .line 2153
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchSocketList;->start()V

    .line 2159
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/Device;->updateBootId()V

    .line 2160
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->updateConfigId()V

    .line 2166
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/Device;->announce()V

    .line 2172
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/Advertiser;

    invoke-direct {v0, p0}, Lcom/hpplay/cybergarage/upnp/device/Advertiser;-><init>(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 2173
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->setAdvertiser(Lcom/hpplay/cybergarage/upnp/device/Advertiser;)V

    .line 2174
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Advertiser;->start()V

    move v2, v3

    .line 2176
    goto :goto_1
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 2203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/Device;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->unlock()V

    .line 251
    return-void
.end method

.method public updateConfigId()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0, p0}, Lcom/hpplay/cybergarage/upnp/Device;->updateConfigId(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 466
    return-void
.end method
