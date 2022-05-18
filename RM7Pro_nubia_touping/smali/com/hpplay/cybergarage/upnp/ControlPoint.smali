.class public Lcom/hpplay/cybergarage/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/cybergarage/http/HTTPRequestListener;


# static fields
.field private static final DEFAULT_EVENTSUB_PORT:I = 0x1f7a

.field private static final DEFAULT_EVENTSUB_URI:Ljava/lang/String; = "/evetSub"

.field private static final DEFAULT_EXPIRED_DEVICE_MONITORING_INTERVAL:I = 0x3c

.field private static final DEFAULT_SSDP_PORT:I = 0x1f48

.field public static final RESULT_CODE_SEND_SEARCH_DATA_FAILED:I = 0x4

.field public static final RESULT_CODE_SEND_SEARCH_INIT_FAILED:I = 0x5

.field public static final SUBSCIBE_SERVER_RETRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "Cyber-ControlPoint"


# instance fields
.field private controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;

.field private cuid:Ljava/lang/String;

.field private final devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

.field private final devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private deviceDisposer:Lcom/hpplay/cybergarage/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

.field private eventSubURI:Ljava/lang/String;

.field private expiredDeviceMonitoringInterval:J

.field private httpPort:I

.field private httpServerList:Lcom/hpplay/cybergarage/http/HTTPServerList;

.field private mutex:Lcom/hpplay/cybergarage/util/Mutex;

.field private nmprMode:Z

.field private renewSubscriber:Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;

.field private searchMx:I

.field private ssdpNotifySocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->initialize()V

    .line 131
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;-><init>(II[Ljava/net/InetAddress;)V

    .line 156
    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/hpplay/cybergarage/util/Mutex;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    .line 185
    iput v3, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 199
    iput v3, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 227
    new-instance v0, Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    .line 228
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 409
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 435
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 445
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 517
    const/4 v0, 0x3

    iput v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 563
    new-instance v0, Lcom/hpplay/cybergarage/http/HTTPServerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->httpServerList:Lcom/hpplay/cybergarage/http/HTTPServerList;

    .line 604
    new-instance v0, Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lcom/hpplay/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    .line 631
    const-string v0, "/evetSub"

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 991
    iput-object v2, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    .line 139
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0, p3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 141
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 142
    invoke-virtual {p0, p2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lcom/hpplay/cybergarage/upnp/device/Disposer;)V

    .line 145
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;)V

    .line 149
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;)V

    .line 151
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    const/16 v0, 0x1f48

    const/16 v1, 0x1f7a

    invoke-direct {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;-><init>(II)V

    .line 160
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->cuid:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private declared-synchronized addDevice(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 244
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->setSSDPPacket(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 252
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 254
    :try_start_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/hpplay/cybergarage/upnp/UPnP;->getXMLParser()Lcom/hpplay/cybergarage/xml/Parser;

    move-result-object v0

    .line 256
    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1, p1}, Lcom/hpplay/cybergarage/upnp/Device;->setSSDPPacket(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->addDevice(Lcom/hpplay/cybergarage/xml/Node;)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lcom/hpplay/cybergarage/upnp/Device;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    :try_start_4
    const-string v1, "Cyber-ControlPoint"

    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "Cyber-ControlPoint"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    const-string v0, "Cyber-ControlPoint"

    const-string v1, "addDevice parse exception"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private addDevice(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private getDevice(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 277
    if-nez p1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lcom/hpplay/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_0

    .line 282
    new-instance v0, Lcom/hpplay/cybergarage/upnp/Device;

    invoke-direct {v0, p1, v1}, Lcom/hpplay/cybergarage/upnp/Device;-><init>(Lcom/hpplay/cybergarage/xml/Node;Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->httpServerList:Lcom/hpplay/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private removeDevice(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDevice(Lcom/hpplay/cybergarage/xml/Node;)V
    .locals 2

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->performRemoveDeviceListener(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 346
    return-void

    .line 344
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public addDeviceChangeListener(Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public addEventListener(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method public addNotifyListener(Lcom/hpplay/cybergarage/upnp/device/NotifyListener;)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public addSearchResponseListener(Lcom/hpplay/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public callbackResultCode(I)V
    .locals 3

    .prologue
    .line 543
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(ILcom/hpplay/cybergarage/upnp/Device;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    const-string v1, "Cyber-ControlPoint"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 165
    return-void
.end method

.method public getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/NodeList;->size()I

    move-result v3

    .line 307
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 308
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0, v2}, Lcom/hpplay/cybergarage/xml/NodeList;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    .line 309
    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 310
    if-nez v0, :cond_1

    .line 307
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 322
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 324
    :goto_1
    return-object v0

    .line 314
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v0, v1

    .line 318
    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    :try_start_2
    const-string v2, "Cyber-ControlPoint"

    invoke-static {v2, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v0, v1

    .line 324
    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDeviceDisposer()Lcom/hpplay/cybergarage/upnp/device/Disposer;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceDisposer:Lcom/hpplay/cybergarage/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 288
    :try_start_0
    new-instance v1, Lcom/hpplay/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;-><init>()V

    .line 289
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/NodeList;->size()I

    move-result v2

    .line 290
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 291
    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v3, v0}, Lcom/hpplay/cybergarage/xml/NodeList;->getNode(I)Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v3

    .line 292
    invoke-direct {p0, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Lcom/hpplay/cybergarage/xml/Node;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 293
    if-nez v3, :cond_0

    .line 290
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1, v3}, Lcom/hpplay/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 297
    return-object v1
.end method

.method public getEventSubURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .locals 2

    .prologue
    .line 394
    iget-wide v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriber:Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;
    .locals 4

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 766
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 767
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 768
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 769
    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v0

    .line 770
    if-eqz v0, :cond_0

    .line 773
    :goto_1
    return-object v0

    .line 767
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 773
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public httpRequestRecieved(Lcom/hpplay/cybergarage/http/HTTPRequest;)V
    .locals 9

    .prologue
    .line 572
    :try_start_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->print()V

    .line 573
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 574
    new-instance v0, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v0, p1}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;-><init>(Lcom/hpplay/cybergarage/http/HTTPRequest;)V

    .line 575
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 577
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/NotifyRequest;->getPropertyList()Lcom/hpplay/cybergarage/upnp/event/PropertyList;

    move-result-object v7

    .line 578
    if-eqz v7, :cond_1

    .line 579
    invoke-virtual {v7}, Lcom/hpplay/cybergarage/upnp/event/PropertyList;->size()I

    move-result v8

    .line 580
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    .line 581
    invoke-virtual {v7, v6}, Lcom/hpplay/cybergarage/upnp/event/PropertyList;->getProperty(I)Lcom/hpplay/cybergarage/upnp/event/Property;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 583
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 580
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnOK()Z

    .line 598
    :goto_1
    return-void

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    const-string v1, "Cyber-ControlPoint"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 593
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/http/HTTPRequest;->returnBadRequest()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public isNMPRMode()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->nmprMode:Z

    return v0
.end method

.method public isSubscribed(Lcom/hpplay/cybergarage/upnp/Service;)Z
    .locals 1

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 720
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->lock()V

    .line 175
    return-void
.end method

.method public notifyReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 496
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 498
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->addDevice(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->performNotifyListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 504
    return-void

    .line 499
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 500
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDevice(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public performAddDeviceListener(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 457
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;

    .line 459
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 457
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method public performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v7

    .line 617
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 618
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v6}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/event/EventListener;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 619
    invoke-interface/range {v0 .. v5}, Lcom/hpplay/cybergarage/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    const-string v1, "Cyber-ControlPoint"

    invoke-static {v1, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 625
    :cond_0
    return-void
.end method

.method public performNotifyListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 421
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 422
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/NotifyListener;

    .line 424
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/NotifyListener;->deviceNotifyReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string v3, "Cyber-ControlPoint"

    const-string v4, "NotifyListener returned an error:"

    invoke-static {v3, v4, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 429
    :cond_0
    return-void
.end method

.method public performRemoveDeviceListener(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 465
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 466
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;

    .line 467
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 465
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public performSearchResponseListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5

    .prologue
    .line 472
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/ListenerList;->size()I

    move-result v2

    .line 473
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 474
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lcom/hpplay/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/cybergarage/upnp/device/SearchResponseListener;

    .line 476
    :try_start_0
    invoke-interface {v0, p1}, Lcom/hpplay/cybergarage/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string v3, "Cyber-ControlPoint"

    const-string v4, "SearchResponseListener returned an error:"

    invoke-static {v3, v4, v0}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 482
    :cond_0
    return-void
.end method

.method public print()V
    .locals 8

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 1007
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 1008
    const-string v0, "Cyber-ControlPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device Num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1010
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 1011
    const-string v4, "Cyber-ControlPoint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/hpplay/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 959
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->controlPoint:Lcom/hpplay/cybergarage/upnp/ControlPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    monitor-exit p0

    return-void

    .line 959
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeDevice(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 1

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getRootNode()Lcom/hpplay/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDevice(Lcom/hpplay/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method protected removeDevice(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v0

    .line 356
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDevice(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 357
    return-void
.end method

.method public removeDeviceChangeListener(Lcom/hpplay/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public removeEventListener(Lcom/hpplay/cybergarage/upnp/event/EventListener;)V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 612
    return-void
.end method

.method public removeExpiredDevices()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stopNotifySocket()V

    .line 376
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    .line 378
    new-array v4, v3, [Lcom/hpplay/cybergarage/upnp/Device;

    move v1, v0

    .line 379
    :goto_0
    if-ge v1, v3, :cond_0

    .line 380
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v5

    aput-object v5, v4, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_2

    .line 382
    aget-object v1, v4, v0

    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/Device;->isExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 383
    const-string v1, "Cyber-ControlPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired device = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Lcom/hpplay/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    aget-object v1, v4, v0

    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->removeDevice(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 381
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 387
    :cond_2
    return-void
.end method

.method public removeNotifyListener(Lcom/hpplay/cybergarage/upnp/device/NotifyListener;)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public removeSearchResponseListener(Lcom/hpplay/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/hpplay/cybergarage/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public renewSubscriberService()V
    .locals 2

    .prologue
    .line 811
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 812
    return-void
.end method

.method public renewSubscriberService(J)V
    .locals 5

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 804
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 805
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 806
    invoke-virtual {p0, v3, p1, p2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lcom/hpplay/cybergarage/upnp/Device;J)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_0
    return-void
.end method

.method public renewSubscriberService(Lcom/hpplay/cybergarage/upnp/Device;J)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 781
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v2

    .line 782
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 783
    :goto_0
    if-ge v1, v3, :cond_2

    .line 784
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 785
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 783
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_1
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v5

    .line 788
    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 789
    if-nez v5, :cond_0

    .line 790
    invoke-virtual {p0, v4, p2, p3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;J)Z

    goto :goto_1

    .line 793
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 795
    :goto_2
    if-ge v0, v2, :cond_3

    .line 796
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 797
    invoke-virtual {p0, v3, p2, p3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lcom/hpplay/cybergarage/upnp/Device;J)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 799
    :cond_3
    return-void
.end method

.method public search()V
    .locals 2

    .prologue
    .line 556
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 557
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 553
    return-void
.end method

.method public search(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 529
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;

    iget-object v1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->cuid:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->print()V

    .line 531
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    .line 532
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    move-result v0

    .line 533
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lcom/hpplay/cybergarage/util/ListenerList;

    if-eqz v0, :cond_0

    .line 534
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->callbackResultCode(I)V

    .line 536
    :cond_0
    new-instance v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;

    const-string v2, "urn:schemas-upnp-org:device:MediaRenderer:1"

    iget-object v3, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->cuid:Ljava/lang/String;

    invoke-direct {v0, v2, p2, v3}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;->print()V

    .line 538
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    .line 539
    return-void
.end method

.method public searchResponseReceived(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->addDevice(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 510
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->performSearchResponseListener(Lcom/hpplay/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 511
    return-void
.end method

.method public setDeviceDisposer(Lcom/hpplay/cybergarage/upnp/device/Disposer;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->deviceDisposer:Lcom/hpplay/cybergarage/upnp/device/Disposer;

    .line 399
    return-void
.end method

.method public setEventSubURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .locals 1

    .prologue
    .line 390
    iput-wide p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 391
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 0

    .prologue
    .line 206
    iput p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 207
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->nmprMode:Z

    .line 217
    return-void
.end method

.method public setRenewSubscriber(Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->renewSubscriber:Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;

    .line 822
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 193
    return-void
.end method

.method public setSearchMx(I)V
    .locals 0

    .prologue
    .line 524
    iput p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 525
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 995
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 906
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 833
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stop()Z

    .line 851
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v1

    if-nez v1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return v2

    .line 854
    :cond_1
    invoke-virtual {v0, p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 855
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->start()V

    .line 861
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    .line 863
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    move v1, v2

    .line 864
    :goto_1
    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 866
    const/16 v5, 0x64

    if-lt v5, v1, :cond_0

    .line 868
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 869
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v0

    goto :goto_1

    .line 871
    :cond_2
    invoke-virtual {v4, p0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 872
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->start()V

    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 884
    new-instance v0, Lcom/hpplay/cybergarage/upnp/device/Disposer;

    invoke-direct {v0, p0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;-><init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 885
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lcom/hpplay/cybergarage/upnp/device/Disposer;)V

    .line 886
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->start()V

    .line 892
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->isNMPRMode()Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 893
    new-instance v0, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;

    invoke-direct {v0, p0}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;-><init>(Lcom/hpplay/cybergarage/upnp/ControlPoint;)V

    .line 894
    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;)V

    .line 895
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->start()V

    :cond_3
    move v2, v3

    .line 898
    goto :goto_0
.end method

.method public startSucribeServ()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;

    move-result-object v4

    .line 680
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/http/HTTPServerList;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    const-string v0, "Cyber-ControlPoint"

    const-string v1, "server is started"

    invoke-static {v0, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 695
    :cond_0
    :goto_0
    return v2

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    move v1, v2

    .line 686
    :goto_1
    invoke-virtual {v4, v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 687
    add-int/lit8 v1, v1, 0x1

    .line 688
    const/16 v5, 0xa

    if-lt v5, v1, :cond_0

    .line 690
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 691
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_1

    .line 693
    :cond_2
    invoke-virtual {v4, p0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->addRequestListener(Lcom/hpplay/cybergarage/http/HTTPRequestListener;)V

    .line 694
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/http/HTTPServerList;->start()V

    move v2, v3

    .line 695
    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 910
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->unsubscribe()V

    .line 912
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->stopNotifySocket()V

    .line 914
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 916
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 917
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 919
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lcom/hpplay/cybergarage/http/HTTPServerList;

    move-result-object v0

    .line 920
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->stop()V

    .line 921
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->close()V

    .line 922
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/http/HTTPServerList;->clear()V

    .line 928
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceDisposer()Lcom/hpplay/cybergarage/upnp/device/Disposer;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_0

    .line 930
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->stop()V

    .line 931
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lcom/hpplay/cybergarage/upnp/device/Disposer;)V

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getRenewSubscriber()Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_1

    .line 940
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;->stop()V

    .line 941
    invoke-virtual {p0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lcom/hpplay/cybergarage/upnp/control/RenewSubscriber;)V

    .line 943
    :cond_1
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->devNodeList:Lcom/hpplay/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/xml/NodeList;->clear()V

    .line 946
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public stopNotifySocket()V
    .locals 2

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->isRuning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 953
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 954
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 956
    :cond_0
    return-void
.end method

.method public stopSearch()Z
    .locals 1

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    .line 965
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 966
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 967
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    .line 969
    invoke-direct {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 971
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 972
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    .line 978
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceDisposer()Lcom/hpplay/cybergarage/upnp/device/Disposer;

    move-result-object v0

    .line 979
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {v0}, Lcom/hpplay/cybergarage/upnp/device/Disposer;->stop()V

    .line 981
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lcom/hpplay/cybergarage/upnp/device/Disposer;)V

    .line 984
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public subscribe(Lcom/hpplay/cybergarage/upnp/Service;)Z
    .locals 2

    .prologue
    .line 669
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->startSucribeServ()Z

    .line 671
    const/4 v0, 0x1

    .line 673
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subscribe(Lcom/hpplay/cybergarage/upnp/Service;J)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 646
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v0

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->getRootDevice()Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v2

    .line 652
    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    .line 655
    new-instance v2, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 656
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getIPv4Address()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p2, p3}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 657
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post()Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v2

    .line 658
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 659
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Service;->setTimeout(J)V

    move v0, v1

    .line 661
    goto :goto_0

    .line 664
    :cond_2
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->clearSID()V

    goto :goto_0
.end method

.method public subscribe(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 714
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->subscribe(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 699
    new-instance v1, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 700
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setRenewRequest(Lcom/hpplay/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 701
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->print()V

    .line 702
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post()Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->print()V

    .line 704
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 705
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/hpplay/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/hpplay/cybergarage/upnp/Service;->setTimeout(J)V

    .line 710
    :goto_0
    return v0

    .line 709
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->clearSID()V

    .line 710
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hpplay/cybergarage/upnp/ControlPoint;->mutex:Lcom/hpplay/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lcom/hpplay/cybergarage/util/Mutex;->unlock()V

    .line 179
    return-void
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 753
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 754
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 755
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 756
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->unsubscribe(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    :cond_0
    return-void
.end method

.method public unsubscribe(Lcom/hpplay/cybergarage/upnp/Device;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getServiceList()Lcom/hpplay/cybergarage/upnp/ServiceList;

    move-result-object v2

    .line 736
    invoke-virtual {v2}, Lcom/hpplay/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 737
    :goto_0
    if-ge v1, v3, :cond_1

    .line 738
    invoke-virtual {v2, v1}, Lcom/hpplay/cybergarage/upnp/ServiceList;->getService(I)Lcom/hpplay/cybergarage/upnp/Service;

    move-result-object v4

    .line 739
    invoke-virtual {v4}, Lcom/hpplay/cybergarage/upnp/Service;->hasSID()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 740
    invoke-virtual {p0, v4}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->unsubscribe(Lcom/hpplay/cybergarage/upnp/Service;)Z

    .line 737
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Device;->getDeviceList()Lcom/hpplay/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 744
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    .line 745
    :goto_1
    if-ge v0, v2, :cond_2

    .line 746
    invoke-virtual {v1, v0}, Lcom/hpplay/cybergarage/upnp/DeviceList;->getDevice(I)Lcom/hpplay/cybergarage/upnp/Device;

    move-result-object v3

    .line 747
    invoke-virtual {p0, v3}, Lcom/hpplay/cybergarage/upnp/ControlPoint;->unsubscribe(Lcom/hpplay/cybergarage/upnp/Device;)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 749
    :cond_2
    return-void
.end method

.method public unsubscribe(Lcom/hpplay/cybergarage/upnp/Service;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 724
    new-instance v1, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 725
    invoke-virtual {v1, p1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lcom/hpplay/cybergarage/upnp/Service;)V

    .line 726
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionRequest;->post()Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 727
    invoke-virtual {v1}, Lcom/hpplay/cybergarage/upnp/event/SubscriptionResponse;->isSuccessful()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 728
    invoke-virtual {p1}, Lcom/hpplay/cybergarage/upnp/Service;->clearSID()V

    .line 731
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
